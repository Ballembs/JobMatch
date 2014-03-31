package org.grails.plugins.h2

import javax.sql.DataSource
import org.slf4j.Logger
import org.slf4j.LoggerFactory

public class DBInitializer {
  Logger log = LoggerFactory.getLogger(DBInitializer.class)

  def init(DataSource dataSource) {
    if (log.isInfoEnabled()) log.info("init() - dataSource: $dataSource - this init() does nothing more than logging this line")
    println "DBInitializer.init() - dataSource: $dataSource - this init() does nothing more than logging this line" //TODO remove this once Grails can log

//    def conn = dataSource.getConnection()
//    def stat = conn.createStatement()
    //def rslt = stat.execute("create table x( x varchar )")
  }
}