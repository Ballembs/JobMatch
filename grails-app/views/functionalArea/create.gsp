<%@ page import="com.Helper.FunctionalArea" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'functionalArea.label', default: 'FunctionalArea')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>

	<section id="create-functionalArea" class="first">

		<g:hasErrors bean="${functionalAreaInstance}">
		<div class="alert alert-danger">
			<g:renderErrors bean="${functionalAreaInstance}" as="list" />
		</div>
		</g:hasErrors>

		<g:form action="save" class="form-horizontal" role="form" >
			<g:render template="form"/>

			<div class="form-actions margin-top-medium">
				<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
	            <button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
			</div>
		</g:form>

	</section>

</body>

</html>
