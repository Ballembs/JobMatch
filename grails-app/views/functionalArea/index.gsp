
<%@ page import="com.Helper.FunctionalArea" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'functionalArea.label', default: 'FunctionalArea')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-functionalArea" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="functionalYear" title="${message(code: 'functionalArea.functionalYear.label', default: 'Functional Year')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${functionalAreaInstanceList}" status="i" var="functionalAreaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${functionalAreaInstance.id}">${fieldValue(bean: functionalAreaInstance, field: "functionalYear")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${functionalAreaInstanceCount}" />
	</div>
</section>

</body>

</html>
