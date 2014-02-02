
<%@ page import="com.KickStart.security.UserProfile" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'userProfile.label', default: 'UserProfile')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-userProfile" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="username" title="${message(code: 'userProfile.username.label', default: 'Username')}" />
			
				<g:sortableColumn property="password" title="${message(code: 'userProfile.password.label', default: 'Password')}" />
			
				<g:sortableColumn property="email" title="${message(code: 'userProfile.email.label', default: 'Email')}" />
			
				<g:sortableColumn property="firstName" title="${message(code: 'userProfile.firstName.label', default: 'First Name')}" />
			
				<g:sortableColumn property="lastName" title="${message(code: 'userProfile.lastName.label', default: 'Last Name')}" />
			
				<g:sortableColumn property="nationality" title="${message(code: 'userProfile.nationality.label', default: 'Nationality')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${userProfileInstanceList}" status="i" var="userProfileInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${userProfileInstance.id}">${fieldValue(bean: userProfileInstance, field: "username")}</g:link></td>
			
				<td>${fieldValue(bean: userProfileInstance, field: "password")}</td>
			
				<td>${fieldValue(bean: userProfileInstance, field: "email")}</td>
			
				<td>${fieldValue(bean: userProfileInstance, field: "firstName")}</td>
			
				<td>${fieldValue(bean: userProfileInstance, field: "lastName")}</td>
			
				<td>${fieldValue(bean: userProfileInstance, field: "nationality")}</td>
			
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
