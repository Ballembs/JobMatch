
<%@ page import="com.Helper.ListIndestry" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'listIndestry.label', default: 'ListIndestry')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-listIndestry" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="listIndestry.indestryName.label" default="Indestry Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: listIndestryInstance, field: "indestryName")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
