<nav id="Navbar" class="navbar navbar-fixed-top navbar-inverse" role="navigation">
	<div class="container">
	
	    <div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        		<span class="sr-only">Toggle navigation</span>
        		<span class="icon-bar"></span>
	           	<span class="icon-bar"></span>
	           	<span class="icon-bar"></span>
			</button>
		</div>

		<div class="collapse navbar-collapse navbar-ex1-collapse" role="navigation">

		<ul class="nav navbar-nav">
			<li class="">
				<a href="${createLink(uri: '/')}">					
					<g:message code="Home"/>
				</a>
		</li>
		
		<li class="">				
				<sec:ifLoggedIn><g:link controller="PostJob" action="Create"><g:message code="Post Job"/></g:link></sec:ifLoggedIn>
				<sec:ifNotLoggedIn><g:link controller="JobProvider" action="Create"><g:message code="Post Job"/></g:link></sec:ifNotLoggedIn>
		</li>
		
		<li class=""><g:link controller="UserProfile" action="Create"><g:message code="Upload Resume"/></g:link></li>
		<sec:ifLoggedIn roles="ROLE_USER"><li class=""><g:link controller="UserProfile" action="index" ><g:message code="Your profile"/></g:link></li></sec:ifLoggedIn>
			
<%--	   <li class="dropdown dropdown-btn">--%>
<%--		 <a class="dropdown-toggle" data-toggle="dropdown" href="#">			--%>
<%--				<g:message code="Role Maneger"/> <b class="caret"></b>--%>
<%--		 </a>--%>
<%--		--%>
<%--		<ul class="dropdown-menu">--%>
<%--			 Note: Links to pages without controller are redirected in conf/UrlMappings.groovy --%>
<%--			<li class="">--%>
<%--				<a href="${createLink(uri: '/Role')}">--%>
<%--					<i><g:message code="Role"/></i>--%>
<%--				</a>--%>
<%--			</li>--%>
<%--			<li class="">--%>
<%--				<a href="${createLink(uri: '/User')}">--%>
<%--					--%>
<%--					<i><g:message code="User"/></i>--%>
<%--				</a>--%>
<%--			</li>--%>
<%--			<li class="">--%>
<%--				<a href="${createLink(uri: '/UserRole')}">--%>
<%--					<i><g:message code="UserRole"/></i>--%>
<%--				</a>--%>
<%--			</li>--%>
<%--			--%>
<%--		</ul>--%>
<%--	</li>--%>
<%--	--%>
<%--		<li class="dropdown dropdown-btn">--%>
<%--		 <a class="dropdown-toggle" data-toggle="dropdown" href="#">			--%>
<%--			<g:message code="Functional Maneger"/> <b class="caret"></b>--%>
<%--		 </a>--%>
<%--		--%>
<%--		<ul class="dropdown-menu">--%>
<%--			 Note: Links to pages without controller are redirected in conf/UrlMappings.groovy --%>
<%--			<li class="">--%>
<%--				<a href="${createLink(uri: '/functionalArea')}">--%>
<%--					<i><g:message code="functional Areas"/></i>--%>
<%--				</a>--%>
<%--			</li>--%>
<%--			<li class="">--%>
<%--				<a href="${createLink(uri: '/listCity')}">--%>
<%--					<i><g:message code="Cities"/></i>--%>
<%--				</a>--%>
<%--			</li>--%>
<%--			<li class="">--%>
<%--				<a href="${createLink(uri: '/listIndestry')}">--%>
<%--					<i><g:message code="Indestries"/></i>--%>
<%--				</a>--%>
<%--			</li>--%>
<%--			<li class="">--%>
<%--				<a href="${createLink(uri: '/PGList')}">--%>
<%--					<i><g:message code="PG"/></i>--%>
<%--				</a>--%>
<%--			</li>--%>
<%--			<li class="">--%>
<%--				<a href="${createLink(uri: '/UGList')}">--%>
<%--					<i><g:message code="UG"/></i>--%>
<%--				</a>--%>
<%--			</li>--%>
<%--			--%>
<%--		</ul>--%>
<%--	</li>--%>
<%--			--%>
		
	</ul>

    	<ul class="nav navbar-nav navbar-right">
 			<g:render template="/_menu/search"/> 
			<g:render template="/_menu/admin"/>														
			<g:render template="/_menu/info"/>														
			<g:render template="/_menu/user"/><!-- NOTE: the renderDialog for the "Register" modal dialog MUST be placed outside the NavBar (at least for Bootstrap 2.1.1): see bottom of main.gsp -->
				
																
	    </ul>			

		</div>
	</div>
</nav>
