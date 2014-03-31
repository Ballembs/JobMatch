<%@ page import="com.Helper.ListCity" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'listCity.label', default: 'ListCity')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>

<body>

	<section id="edit-listCity" class="first">

		<g:hasErrors bean="${listCityInstance}">
		<div class="alert alert-danger">
			<g:renderErrors bean="${listCityInstance}" as="list" />
		</div>
		</g:hasErrors>

		<g:form method="post" class="form-horizontal" role="form" >
			<g:hiddenField name="id" value="${listCityInstance?.id}" />
			<g:hiddenField name="version" value="${listCityInstance?.version}" />
			<g:hiddenField name="_method" value="PUT" />
			
			<g:render template="form"/>
			
			<div class="form-actions margin-top-medium">
				<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
	            <button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
			</div>
		</g:form>

	</section>

</body>

</html>
