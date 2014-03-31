<div class="">
	<ul class="nav nav-tabs" data-role="listview" data-split-icon="gear" data-filter="true">
		<li class="">
				<a href="${createLink(uri: '/')}">					
					<g:message code="Home"/>
				</a>
		</li>
		
		<li class="">
				<a href="${createLink(uri: '/PostJob')}">					
					<g:message code="Post job"/>
				</a>
		</li>
		
		<li><g:link controller="UserProfile" action="Create">Upload Resume</g:link></li>
		<sec:ifLoggedIn roles="ROLE_USER"><li><g:link controller="UserProfile" action="index" >Your profile</g:link></li></sec:ifLoggedIn>
			
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
</div>