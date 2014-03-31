import org.codehaus.groovy.grails.commons.ConfigurationHolder

class H2GrailsPlugin {
    def version = '0.2.6'
    def dependsOn = [:]

    def author = "Mingfai Ma", authorEmail = "mingfai.ma@gmail.com"
    def title = "Provide H2 Database Support"
    def description = '''\\
This plugin provides the following features:
  - included all h2 libraries
  - provide configuration to start H2 tcpserver, webserver (standalone console), pgserver, and console servlet
  - create database and Spring data source by configuration
'''

    def documentation = "http://grails.org/H2+Database+Plugin"

    def doWithSpring = {
        //setting system properties that will affect the H2 server services
        def h2SystemProps = ConfigurationHolder.config.'plugins'.'h2'.'system'.flatten()
        h2SystemProps.each{ k,v ->
           System.setProperty("h2.${k}", v)
           if (log.isInfoEnabled()) log.info("System.setProperty() - h2.${k}, ${v}")
           println "System.setProperty() - h2.${k}, ${v}"
        }

      //TODO refactor the following 3 pieces of server startup code
        def serverCfg
        // tcp server
        serverCfg = ConfigurationHolder.config.'plugins'.'h2'.'tcpserver'.flatten()
        if ( !serverCfg.isEmpty() && !serverCfg.remove('disable')){
          def serverArgs = new StringWriter().with{ it << "-tcp"}
          serverCfg.each{ k,v-> serverArgs << ",-${k}${v||v==false?','+v:''}"}
          'h2tcpserver'(org.h2.tools.Server, serverArgs.toString()){ bean ->
            bean.factoryMethod = 'createTcpServer'; bean.initMethod = 'start'; bean.destroyMethod = 'stop'
          }
          if (log.isInfoEnabled()) log.info("H2GrailsPlugin: Started TCP Server - args: ${serverArgs}")
          println "H2GrailsPlugin: Started TCP Server - args: ${serverArgs}" //TODO remove this once Grails can log
        }

        // pg server
        serverCfg = ConfigurationHolder.config.'plugins'.'h2'.'pgserver'.flatten()
        if ( !serverCfg.isEmpty() && !serverCfg.remove('disable')){
          def serverArgs = new StringWriter().with{ it << "-pg"}
          serverCfg.each{ k,v-> serverArgs << ",-${k}${v||v==false?','+v:''}"}
          'h2pgserver'(org.h2.tools.Server, serverArgs.toString()){ bean ->
            bean.factoryMethod = 'createPgServer'; bean.initMethod = 'start'; bean.destroyMethod = 'stop'
          }
          if (log.isInfoEnabled()) log.info("H2GrailsPlugin: Started PG Server - args: ${serverArgs}")
          println "H2GrailsPlugin: Started PG Server - args: ${serverArgs}" //TODO remove this once Grails can log
        }

        // web server
        serverCfg = ConfigurationHolder.config.'plugins'.'h2'.'console'.'standalone'.flatten()
        if ( !serverCfg.isEmpty() && !serverCfg.remove('disable')){
          def serverArgs = new StringWriter().with{ it << "-web"}
          serverCfg.each{ k,v-> serverArgs << ",-${k}${v||v==false?','+v:''}"}
          'h2webserver'(org.h2.tools.Server, serverArgs.toString()){ bean ->
            bean.factoryMethod = 'createWebServer'; bean.initMethod = 'start'; bean.destroyMethod = 'stop'
          }
          if (log.isInfoEnabled()) log.info("H2GrailsPlugin: Started Standalone Console - args: ${serverArgs}")
          println "H2GrailsPlugin: Started Standalone Console - args: ${serverArgs}" //TODO remove this once Grails can log
        }


        // create datasource
        def config = ConfigurationHolder.config.'plugins'.'h2'.'database'
        config.each{ dbName, dbCfg ->
          def dsName = "${dbName}DataSource"
          "${dsName}"(org.springframework.jdbc.datasource.DriverManagerDataSource){
            driverClassName = "org.h2.Driver"  
            username = dbCfg.'user' instanceof ConfigObject?'sa':dbCfg.'user'
            password = dbCfg.'password' instanceof ConfigObject?'':dbCfg.'password'
            url = dbCfg.'url' //valid url must be provided
          }
          if (log.isInfoEnabled()) log.info("H2GrailsPlugin - created a ${dsName} bean - dbCfg: ${dbCfg}")
          println "H2GrailsPlugin - created a ${dsName} bean - dbCfg: ${dbCfg}" //TODO remove this once Grails can log
        }
    }

    def doWithApplicationContext = { applicationContext ->
        def config = ConfigurationHolder.config.'plugins'.'h2'.'database'
        config.each{ dbName, dbCfg ->
          def dsName = "${dbName}DataSource"
          if (dbCfg.'init'!=false){
            def initClassCfg = dbCfg.'init'.'initClass'
            def initClass = initClassCfg instanceof ConfigObject ? org.grails.plugins.h2.DBInitializer.class :
                            initClassCfg instanceof Class? initClassCfg : Class.forName(initClassCfg)
            initClass.newInstance().init(applicationContext.getBean(dsName))
          }
        }
    }

    def doWithWebDescriptor = { xml ->
      def serverCfg = ConfigurationHolder.config.'plugins'.'h2'.'console'.'servlet'.flatten()

      if ( !serverCfg.isEmpty() && !serverCfg.remove('disable')){
        def servlets = xml.'servlet'
        servlets[servlets.size()-1] + {
          servlet{
            'servlet-name'('h2console')
            'servlet-class'('org.h2.server.web.WebServlet')
            'load-on-startup'(2)
          }
        }

        def servletConsoleMappingCfg = serverCfg.'mapping'
        def servletConsoleMapping = servletConsoleMappingCfg instanceof ConfigObject?'/console/h2/*':servletConsoleMappingCfg
        def servletMappings = xml.'servlet-mapping'
        servletMappings[servletMappings.size()-1] + {
          'servlet-mapping'{
            'servlet-name'('h2console')
            'url-pattern'(servletConsoleMapping)
          }
        }
        if (log.isInfoEnabled()) log.info("H2GrailsPlugin: Started H2 Console (Servlet) at /\${contextPath}$servletConsoleMapping")
        println "H2GrailsPlugin: Started H2 Console (Servlet) at /\$contextPath$servletConsoleMapping" //TODO remove this once Grails can log
      }
    }

    def doWithDynamicMethods = { ctx ->
        // TODO Implement registering dynamic methods to classes (optional)
    }

    def onChange = { event ->
        // TODO Implement code that is executed when any artefact that this plugin is
        // watching is modified and reloaded. The event contains: event.source,
        // event.application, event.manager, event.ctx, and event.plugin.
    }

    def onConfigChange = { event ->
        // TODO Implement code that is executed when the project configuration changes.
        // The event is the same as for 'onChange'.
    }
}
