
<%@ page import="com.KickStart.security.UserProfile" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'userProfile.label', default: 'UserProfile')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-userProfile" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.username.label" default="Username" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "username")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.password.label" default="Password" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "password")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "email")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.firstName.label" default="First Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "firstName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.lastName.label" default="Last Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "lastName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.nationality.label" default="Nationality" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "nationality")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.currentLocation.label" default="Current Location" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "currentLocation")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.mobileNumber.label" default="Mobile Number" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "mobileNumber")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.gender.label" default="Gender" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "gender")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.totalExperience.label" default="Total Experience" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "totalExperience")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.months.label" default="Months" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "months")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.jobType.label" default="Job Type" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "jobType")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.keySkils.label" default="Key Skils" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "keySkils")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.resume.label" default="Resume" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.accountExpired.label" default="Account Expired" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${userProfileInstance?.accountExpired}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.accountLocked.label" default="Account Locked" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${userProfileInstance?.accountLocked}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.currentIndestry.label" default="Current Indestry" /></td>
				
				<td valign="top" class="value"><g:link controller="listIndestry" action="show" id="${userProfileInstance?.currentIndestry?.id}">${userProfileInstance?.currentIndestry?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.dateCreated.label" default="Date Created" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${userProfileInstance?.dateCreated}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.enabled.label" default="Enabled" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${userProfileInstance?.enabled}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.function.label" default="Function" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "function")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.lastUpdated.label" default="Last Updated" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${userProfileInstance?.lastUpdated}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.passwordExpired.label" default="Password Expired" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${userProfileInstance?.passwordExpired}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.prefferedLocation.label" default="Preffered Location" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${userProfileInstance.prefferedLocation}" var="p">
						<li><g:link controller="listCity" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
