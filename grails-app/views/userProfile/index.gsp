
<%@ page import="com.KickStart.security.UserProfile" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'userProfile.label', default: 'UserProfile')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-userProfile" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="username" title="${message(code: 'userProfile.username.label', default: 'Username')}" />
			
				
				<g:sortableColumn property="firstName" title="${message(code: 'userProfile.firstName.label', default: 'First Name')}" />
				
				<g:sortableColumn property="keySkils" title="${message(code: 'userProfile.keySkils.label', default: 'Key Skils')}" />
				
				<g:sortableColumn property="qualification" title="${message(code: 'userProfile.qualification.label', default: 'Qualification')}" />
				
				<g:sortableColumn property="certification" title="${message(code: 'userProfile.certification.label', default: 'Certifications')}" />
				
				<g:sortableColumn property="currentIndestry" title="${message(code: 'userProfile.currentIndestry.label', default: 'Current Indestry')}" />
				
				<g:sortableColumn property="email" title="${message(code: 'userProfile.email.label', default: 'Email')}" />
			
				<g:sortableColumn property="mobileNumber" title="${message(code: 'userProfile.mobileNumber.label', default: 'Mobile Number')}" />
				
				<g:sortableColumn property="uploadResume" title="${message(code: 'userProfile.uploadResume.label', default: 'Download Resume')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${userProfileInstanceList}" status="i" var="userProfileInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${userProfileInstance.id}">${fieldValue(bean: userProfileInstance, field: "username")}</g:link></td>
			
				<td>${fieldValue(bean: userProfileInstance, field: "firstName")}</td>
				
				<td>${fieldValue(bean: userProfileInstance, field: "keySkils")}</td>
				
				<td>${fieldValue(bean: userProfileInstance, field: "qualification")}</td>
				
				<td>${fieldValue(bean: userProfileInstance, field: "certification")}</td>
				
				<td>${fieldValue(bean: userProfileInstance, field: "currentIndestry")}</td>				
				
				<td>${fieldValue(bean: userProfileInstance, field: "email")}</td>						
			
				<td>${fieldValue(bean: userProfileInstance, field: "mobileNumber")}</td>
				
				<td><g:link action="downloadResume" id="${userProfileInstance.id}">Download</g:link></td>
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${userProfileInstanceCount}" />
	</div>
</section>

</body>

</html>
