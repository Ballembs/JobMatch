
<%@ page import="com.Helper.PGList" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'PGList.label', default: 'PGList')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-PGList" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="pgName" title="${message(code: 'PGList.pgName.label', default: 'Pg Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${PGListInstanceList}" status="i" var="PGListInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${PGListInstance.id}">${fieldValue(bean: PGListInstance, field: "pgName")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${PGListInstanceCount}" />
	</div>
</section>

</body>

</html>
