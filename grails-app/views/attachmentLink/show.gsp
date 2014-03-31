
<%@ page import="com.macrobit.grails.plugins.attachmentable.domains.AttachmentLink" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'attachmentLink.label', default: 'AttachmentLink')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-attachmentLink" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachmentLink.referenceClass.label" default="Reference Class" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: attachmentLinkInstance, field: "referenceClass")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachmentLink.referenceId.label" default="Reference Id" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: attachmentLinkInstance, field: "referenceId")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="attachmentLink.attachments.label" default="Attachments" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${attachmentLinkInstance.attachments}" var="a">
						<li><g:link controller="attachment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
