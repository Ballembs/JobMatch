
<%@ page import="com.KickStart.security.Role" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-role" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="role.authority.label" default="Authority" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: roleInstance, field: "authority")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
