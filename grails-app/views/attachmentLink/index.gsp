
<%@ page import="com.macrobit.grails.plugins.attachmentable.domains.AttachmentLink" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'attachmentLink.label', default: 'AttachmentLink')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-attachmentLink" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="referenceClass" title="${message(code: 'attachmentLink.referenceClass.label', default: 'Reference Class')}" />
			
				<g:sortableColumn property="referenceId" title="${message(code: 'attachmentLink.referenceId.label', default: 'Reference Id')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${attachmentLinkInstanceList}" status="i" var="attachmentLinkInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${attachmentLinkInstance.id}">${fieldValue(bean: attachmentLinkInstance, field: "referenceClass")}</g:link></td>
			
				<td>${fieldValue(bean: attachmentLinkInstance, field: "referenceId")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${attachmentLinkInstanceCount}" />
	</div>
</section>

</body>

</html>
