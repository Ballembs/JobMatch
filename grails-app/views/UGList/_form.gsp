<%@ page import="com.Helper.UGList" %>



			<div class="${hasErrors(bean: UGListInstance, field: 'postJob', 'error')} ">
				<label for="postJob" class="control-label"><g:message code="UGList.postJob.label" default="Post Job" /></label>
				<div>
					
					<span class="help-inline">${hasErrors(bean: UGListInstance, field: 'postJob', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: UGListInstance, field: 'ugName', 'error')} ">
				<label for="ugName" class="control-label"><g:message code="UGList.ugName.label" default="Ug Name" /></label>
				<div>
					<g:textField class="form-control" name="ugName" value="${UGListInstance?.ugName}"/>
					<span class="help-inline">${hasErrors(bean: UGListInstance, field: 'ugName', 'error')}</span>
				</div>
			</div>

