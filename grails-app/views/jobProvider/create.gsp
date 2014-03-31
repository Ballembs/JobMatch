<%@ page import="com.KickStart.security.JobProvider" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'jobProvider.label', default: 'JobProvider')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>

	<section id="create-jobProvider" class="first">
		
		<g:hasErrors bean="${jobProviderInstance}">
		<div class="alert alert-danger">
			<g:renderErrors bean="${jobProviderInstance}" as="list" />
		</div>
		</g:hasErrors>
		<button><g:link controller="PostJob" action="Create"><g:message code="Existing job provider"/></g:link></button>
		<g:form action="save" class="form-horizontal" role="form" >
			<div class="left">
			<g:render template="form"/>

			<div class="form-actions margin-top-medium">
				<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
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
