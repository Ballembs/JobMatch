
<%@ page import="com.Helper.UGList" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'UGList.label', default: 'UGList')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-UGList" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="ugName" title="${message(code: 'UGList.ugName.label', default: 'Ug Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${UGListInstanceList}" status="i" var="UGListInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${UGListInstance.id}">${fieldValue(bean: UGListInstance, field: "ugName")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${UGListInstanceCount}" />
	</div>
</section>

</body>

</html>
