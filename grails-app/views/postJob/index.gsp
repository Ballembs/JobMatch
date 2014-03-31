
<%@ page import="com.KickStart.security.PostJob" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'postJob.label', default: 'PostJob')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-postJob" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="jobTitle" title="${message(code: 'postJob.jobTitle.label', default: 'Job Title')}" />
			
				<g:sortableColumn property="jobDescription" title="${message(code: 'postJob.jobDescription.label', default: 'Job Description')}" />
			
				<g:sortableColumn property="workExperience" title="${message(code: 'postJob.workExperienceMin.label', default: 'Work Experience')}" />
			
				<g:sortableColumn property="anaualCTC" title="${message(code: 'postJob.anaualCTC.label', default: 'Anaual CTC')}" />
				
				<g:sortableColumn property="anaualCTC" title="${message(code: 'postJob.emailId.label', default: 'Email Id')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${postJobInstanceList}" status="i" var="postJobInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${postJobInstance.id}">${fieldValue(bean: postJobInstance, field: "jobTitle")}</g:link></td>
			
				<td>${fieldValue(bean: postJobInstance, field: "jobDescription")}</td>
			
				<td>${fieldValue(bean: postJobInstance, field: "workExperienceMin")}
				<label> To </label>
				${fieldValue(bean: postJobInstance, field: "workExperienceMax")}</td>
			
				<td>${fieldValue(bean: postJobInstance, field: "cuurencyType")} <label>.</label>
				${fieldValue(bean: postJobInstance, field: "anaualCTC")}<label> To </label>
				${fieldValue(bean: postJobInstance, field: "anaualCTCMax")}</td>
				
				<td>${fieldValue(bean: postJobInstance, field: "emailId")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${postJobInstanceCount}" />
	</div>
</section>

</body>

</html>
