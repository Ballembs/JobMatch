<%@ page import="com.macrobit.grails.plugins.attachmentable.domains.AttachmentLink" %>



			<div class="${hasErrors(bean: attachmentLinkInstance, field: 'referenceClass', 'error')} required">
				<label for="referenceClass" class="control-label"><g:message code="attachmentLink.referenceClass.label" default="Reference Class" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="referenceClass" required="" value="${attachmentLinkInstance?.referenceClass}"/>
					<span class="help-inline">${hasErrors(bean: attachmentLinkInstance, field: 'referenceClass', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: attachmentLinkInstance, field: 'referenceId', 'error')} required">
				<label for="referenceId" class="control-label"><g:message code="attachmentLink.referenceId.label" default="Reference Id" /><span class="required-indicator">*</span></label>
				<div>
					<g:field class="form-control" name="referenceId" type="number" min="0" value="${attachmentLinkInstance.referenceId}" required=""/>
					<span class="help-inline">${hasErrors(bean: attachmentLinkInstance, field: 'referenceId', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: attachmentLinkInstance, field: 'attachments', 'error')} ">
				<label for="attachments" class="control-label"><g:message code="attachmentLink.attachments.label" default="Attachments" /></label>
				<div>
					
<ul class="one-to-many">
<g:each in="${attachmentLinkInstance?.attachments?}" var="a">
    <li><g:link controller="attachment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="attachment" action="create" params="['attachmentLink.id': attachmentLinkInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'attachment.label', default: 'Attachment')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: attachmentLinkInstance, field: 'attachments', 'error')}</span>
				</div>
			</div>

