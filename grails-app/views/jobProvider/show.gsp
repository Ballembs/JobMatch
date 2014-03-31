
<%@ page import="com.KickStart.security.JobProvider" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'jobProvider.label', default: 'JobProvider')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-jobProvider" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="jobProvider.username.label" default="Username" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: jobProviderInstance, field: "username")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="jobProvider.companyName.label" default="Company Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: jobProviderInstance, field: "companyName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="jobProvider.aboutCompany.label" default="About Company" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: jobProviderInstance, field: "aboutCompany")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="jobProvider.companyWebsite.label" default="Company Website" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: jobProviderInstance, field: "companyWebsite")}</td>
				
			</tr>
			
			<tr class="prop">
				<td valign="top" class="name"><g:link controller="PostJob" action="Create"><g:message code="Post Job"/></g:link></td>
							
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
