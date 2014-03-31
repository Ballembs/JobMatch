
<%@ page import="com.KickStart.security.UserProfile" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'userProfile.label', default: 'UserProfile')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-userProfile" class="first show-section">
		<div class="UserFormDiv" >
		<h4>Personal Information</h4>
		<table class="table">
			<tbody>
			
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.firstName.label" default="First Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "firstName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.lastName.label" default="Last Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "lastName")}</td>
				
			</tr>
			
			
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.gender.label" default="Gender" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "gender")}</td>
				
			</tr>
		</tbody>
		</table>
		</div>
		
		<div class="UserFormDiv" >
		<h4>Contact Information</h4>
		<table class="table">
			<tbody>
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "email")}</td>
				
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
		</tbody>
		</table>
		</div>
		
		<div class="UserFormDiv" >
		<h4>Your job profile</h4>
		<table class="table">
			<tbody>
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.totalExperience.label" default="Total Experience" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "totalExperience")}</td>
				
			</tr>
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.qualification.label" default="Qualification" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "qualification")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.certification.label" default="Certification" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "certification")}</td>
				
			</tr>
		
			
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.keySkils.label" default="Key Skils" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: userProfileInstance, field: "keySkils")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.currentIndestry.label" default="Current Indestry" /></td>
				
				<td valign="top" class="value">${userProfileInstance?.currentIndestry?.encodeAsHTML()}</td>
				
			</tr>
					
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.prefferedLocation.label" default="Preffered Location" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${userProfileInstance.prefferedLocation}" var="p">
						<li>${p?.encodeAsHTML()}</li>
					</g:each>
					</ul>
				</td>
				
			</tr>
			
		
		
		</tbody>
			
		</table>
		</div>
		<div class="UserFormDiv">
		<h4>Your Resume</h4>
		<table class="table">
		 <tbody>
			<tr class="prop">
				<td valign="top" class="name"><g:message code="userProfile.resumeTitle.label" default="Your resume" /></td>
				<td valign="top" style="text-align: left;" class="value">
				<g:link action="downloadResume" id="${userProfileInstance.id}"><g:message code="Download" default="Download resume" /></g:link>
				</td>
			</tr>
		</tbody>
		</table>
		</div>
</section>

</body>

</html>
