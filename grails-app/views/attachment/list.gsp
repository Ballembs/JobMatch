
<%@ page import="com.macrobit.grails.plugins.attachmentable.domains.Attachment" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'attachment.label', default: 'Attachment')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-attachment" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'attachment.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="ext" title="${message(code: 'attachment.ext.label', default: 'Ext')}" />
			
				<g:sortableColumn property="contentType" title="${message(code: 'attachment.contentType.label', default: 'Content Type')}" />
			
				<g:sortableColumn property="length" title="${message(code: 'attachment.length.label', default: 'Length')}" />
			
				<g:sortableColumn property="posterClass" title="${message(code: 'attachment.posterClass.label', default: 'Poster Class')}" />
			
				<g:sortableColumn property="posterId" title="${message(code: 'attachment.posterId.label', default: 'Poster Id')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${attachmentInstanceList}" status="i" var="attachmentInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${attachmentInstance.id}">${fieldValue(bean: attachmentInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: attachmentInstance, field: "ext")}</td>
			
				<td>${fieldValue(bean: attachmentInstance, field: "contentType")}</td>
			
				<td>${fieldValue(bean: attachmentInstance, field: "length")}</td>
			
				<td>${fieldValue(bean: attachmentInstance, field: "posterClass")}</td>
			
				<td>${fieldValue(bean: attachmentInstance, field: "posterId")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${attachmentInstanceCount}" />
	</div>
</section>

</body>

</html>
