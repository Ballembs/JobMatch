<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#">
   		<i class="glyphicon glyphicon-wrench"></i>
		<g:message code="default.admin.label"/><b class="caret"></b>
	</a>
	<ul class="dropdown-menu">
<%--		<li class="">--%>
<%--			<a tabindex="-1" href="#"><b>Technical Admin</b></a>--%>
<%--		</li>--%>
		<g:if env="development">
		<li class="dropdown dropdown-btn">
		 <a class="dropdown-toggle" data-toggle="dropdown" href="#">			
				<g:message code="Role Maneger"/> <b class="caret"></b>
		 </a>
		
		<ul class="dropdown-menu">
			<%-- Note: Links to pages without controller are redirected in conf/UrlMappings.groovy --%>
			<li class="">
				<a href="${createLink(uri: '/Role')}">
					<i><g:message code="Role"/></i>
				</a>
			</li>
			<li class="">
				<a href="${createLink(uri: '/User')}">
					
					<i><g:message code="User"/></i>
				</a>
			</li>
			<li class="">
				<a href="${createLink(uri: '/UserRole')}">
					<i><g:message code="UserRole"/></i>
				</a>
			</li>
			
		</ul>
	</li>
	
		<li class="dropdown dropdown-btn">
		 <a class="dropdown-toggle" data-toggle="dropdown" href="#">			
			<g:message code="Functional Maneger"/> <b class="caret"></b>
		 </a>
		
		<ul class="dropdown-menu">
			<%-- Note: Links to pages without controller are redirected in conf/UrlMappings.groovy --%>
			<li class="">
				<a href="${createLink(uri: '/functionalArea')}">
					<i><g:message code="functional Areas"/></i>
				</a>
			</li>
			<li class="">
				<a href="${createLink(uri: '/listCity')}">
					<i><g:message code="Cities"/></i>
				</a>
			</li>
			<li class="">
				<a href="${createLink(uri: '/listIndestry')}">
					<i><g:message code="Indestries"/></i>
				</a>
			</li>
			<li class="">
				<a href="${createLink(uri: '/PGList')}">
					<i><g:message code="PG"/></i>
				</a>
			</li>
			<li class="">
				<a href="${createLink(uri: '/UGList')}">
					<i><g:message code="UG"/></i>
				</a>
			</li>
			
		</ul>
	</li>
			
		<li class="">
			<a href="${createLink(uri: '/dbconsole')}">
				<i class="glyphicon glyphicon-dashboard"></i>
				<g:message code="default.dbconsole.label"/>
			</a>
		</li>
		</g:if>
		<li class="">
			<a href="${createLink(uri: '/systeminfo')}">
				<i class="glyphicon glyphicon-info-sign"></i>
				<g:message code="default.systeminfo.label"/>
			</a>
		</li>
	</ul>
</li>
