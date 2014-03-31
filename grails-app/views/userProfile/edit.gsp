<%@ page import="com.KickStart.security.UserProfile" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'userProfile.label', default: 'UserProfile')}" />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>

<body>

	<section id="edit-userProfile" class="first clear-fix">

		<g:hasErrors bean="${userProfileInstance}">
		<div class="alert alert-danger">
			<g:renderErrors bean="${userProfileInstance}" as="list" />
		</div>
		</g:hasErrors>

		<g:form method="post" class="form-horizontal" role="form"  enctype="multipart/form-data">
			<div class="left">
			<g:hiddenField name="id" value="${userProfileInstance?.id}" />
			<g:hiddenField name="version" value="${userProfileInstance?.version}" />
			<g:hiddenField name="_method" value="PUT" />
			
			<g:render template="form"/>
			
			<div class="form-actions margin-top-medium">
				<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
	            <button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
			</div>
			</div>
				<div class="right">
				<h2> Thank for choosing Job match</h2>
				<div class="side-content">
				
				<p>Set up your profile to get the job alerts</p>
				<img src="//ssl.gstatic.com/accounts/signup/profiles_2x.png" height="124px" width="300px">
				<p>Your profile will be viewed by top most companies </p>
				<p>We will send you messages and mails to the register mobile and email adresses</p>
				<img src="//ssl.gstatic.com/accounts/signup/devices_2x.png" height="172px" width="300px">
  			</div>
			</div>
		</g:form>

	</section>

</body>

</html>
