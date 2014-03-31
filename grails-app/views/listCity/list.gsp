
<%@ page import="com.Helper.ListCity" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'listCity.label', default: 'ListCity')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-listCity" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="cityName" title="${message(code: 'listCity.cityName.label', default: 'City Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${listCityInstanceList}" status="i" var="listCityInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${listCityInstance.id}">${fieldValue(bean: listCityInstance, field: "cityName")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${listCityInstanceCount}" />
	</div>
</section>

</body>

</html>
