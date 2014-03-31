<%@ page import="com.Helper.PGList" %>



			<div class="${hasErrors(bean: PGListInstance, field: 'pgName', 'error')} ">
				<label for="pgName" class="control-label"><g:message code="PGList.pgName.label" default="Pg Name" /></label>
				<div>
					<g:textField class="form-control" name="pgName" value="${PGListInstance?.pgName}"/>
					<span class="help-inline">${hasErrors(bean: PGListInstance, field: 'pgName', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: PGListInstance, field: 'postJob', 'error')} ">
				<label for="postJob" class="control-label"><g:message code="PGList.postJob.label" default="Post Job" /></label>
				<div>
					
					<span class="help-inline">${hasErrors(bean: PGListInstance, field: 'postJob', 'error')}</span>
				</div>
			</div>

