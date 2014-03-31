
<%@ page import="com.KickStart.security.JobProvider" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'jobProvider.label', default: 'JobProvider')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-jobProvider" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="username" title="${message(code: 'jobProvider.username.label', default: 'Username')}" />
			
				<g:sortableColumn property="companyName" title="${message(code: 'jobProvider.companyName.label', default: 'Company name')}" />
						
				<g:sortableColumn property="aboutCompany" title="${message(code: 'jobProvider.aboutCompany.label', default: 'About Company')}" />
			
				<g:sortableColumn property="companyWebsite" title="${message(code: 'jobProvider.companyWebsite.label', default: 'Company Website')}" />
			
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${jobProviderInstanceList}" status="i" var="jobProviderInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${jobProviderInstance.id}">${fieldValue(bean: jobProviderInstance, field: "username")}</g:link></td>
			
				<td><g:formatBoolean boolean="${jobProviderInstance.companyName}" /></td>
			
				<td><g:formatBoolean boolean="${jobProviderInstance.aboutCompany}" /></td>
			
				<td><g:formatBoolean boolean="${jobProviderInstance.companyWebsite}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${jobProviderInstanceCount}" />
	</div>
</section>

</body>

</html>
