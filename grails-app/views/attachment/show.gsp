
<%@ page import="com.macrobit.grails.plugins.attachmentable.domains.Attachment" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'attachment.label', default: 'Attachment')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-attachment" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachment.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: attachmentInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachment.ext.label" default="Ext" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: attachmentInstance, field: "ext")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachment.contentType.label" default="Content Type" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: attachmentInstance, field: "contentType")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachment.length.label" default="Length" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: attachmentInstance, field: "length")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachment.posterClass.label" default="Poster Class" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: attachmentInstance, field: "posterClass")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachment.posterId.label" default="Poster Id" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: attachmentInstance, field: "posterId")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachment.dateCreated.label" default="Date Created" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${attachmentInstance?.dateCreated}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachment.inputName.label" default="Input Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: attachmentInstance, field: "inputName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachment.lnk.label" default="Lnk" /></td>
				
				<td valign="top" class="value"><g:link controller="attachmentLink" action="show" id="${attachmentInstance?.lnk?.id}">${attachmentInstance?.lnk?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
