
<%@ page import="com.KickStart.security.Role" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-role" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="authority" title="${message(code: 'role.authority.label', default: 'Authority')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${roleInstanceList}" status="i" var="roleInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${roleInstance.id}">${fieldValue(bean: roleInstance, field: "authority")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${roleInstanceCount}" />
	</div>
</section>

</body>

</html>
