<%@ page import="com.macrobit.grails.plugins.attachmentable.domains.Attachment" %>



			<div class="${hasErrors(bean: attachmentInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="attachment.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="name" required="" value="${attachmentInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: attachmentInstance, field: 'ext', 'error')} ">
				<label for="ext" class="control-label"><g:message code="attachment.ext.label" default="Ext" /></label>
				<div>
					<g:textField class="form-control" name="ext" value="${attachmentInstance?.ext}"/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'ext', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: attachmentInstance, field: 'contentType', 'error')} ">
				<label for="contentType" class="control-label"><g:message code="attachment.contentType.label" default="Content Type" /></label>
				<div>
					<g:textField class="form-control" name="contentType" value="${attachmentInstance?.contentType}"/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'contentType', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: attachmentInstance, field: 'length', 'error')} required">
				<label for="length" class="control-label"><g:message code="attachment.length.label" default="Length" /><span class="required-indicator">*</span></label>
				<div>
					<g:field class="form-control" name="length" type="number" min="0" value="${attachmentInstance.length}" required=""/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'length', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: attachmentInstance, field: 'posterClass', 'error')} required">
				<label for="posterClass" class="control-label"><g:message code="attachment.posterClass.label" default="Poster Class" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="posterClass" required="" value="${attachmentInstance?.posterClass}"/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'posterClass', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: attachmentInstance, field: 'posterId', 'error')} required">
				<label for="posterId" class="control-label"><g:message code="attachment.posterId.label" default="Poster Id" /><span class="required-indicator">*</span></label>
				<div>
					<g:field class="form-control" name="posterId" type="number" min="0" value="${attachmentInstance.posterId}" required=""/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'posterId', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: attachmentInstance, field: 'inputName', 'error')} ">
				<label for="inputName" class="control-label"><g:message code="attachment.inputName.label" default="Input Name" /></label>
				<div>
					<g:textField class="form-control" name="inputName" value="${attachmentInstance?.inputName}"/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'inputName', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: attachmentInstance, field: 'lnk', 'error')} required">
				<label for="lnk" class="control-label"><g:message code="attachment.lnk.label" default="Lnk" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="lnk" name="lnk.id" from="${com.macrobit.grails.plugins.attachmentable.domains.AttachmentLink.list()}" optionKey="id" required="" value="${attachmentInstance?.lnk?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: attachmentInstance, field: 'lnk', 'error')}</span>
				</div>
			</div>

