
<%@ page import="com.Helper.FunctionalArea" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'functionalArea.label', default: 'FunctionalArea')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-functionalArea" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="functionalArea.functionalYear.label" default="Functional Year" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: functionalAreaInstance, field: "functionalYear")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
