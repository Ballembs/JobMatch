
<%@ page import="com.Helper.ListIndestry" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'listIndestry.label', default: 'ListIndestry')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-listIndestry" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="indestryName" title="${message(code: 'listIndestry.indestryName.label', default: 'Indestry Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${listIndestryInstanceList}" status="i" var="listIndestryInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${listIndestryInstance.id}">${fieldValue(bean: listIndestryInstance, field: "indestryName")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${listIndestryInstanceCount}" />
	</div>
</section>

</body>

</html>
