<%@ page import="com.Helper.ListIndestry" %>



			<div class="${hasErrors(bean: listIndestryInstance, field: 'indestryName', 'error')} ">
				<label for="indestryName" class="control-label"><g:message code="listIndestry.indestryName.label" default="Indestry Name" /></label>
				<div>
					<g:textField class="form-control" name="indestryName" value="${listIndestryInstance?.indestryName}"/>
					<span class="help-inline">${hasErrors(bean: listIndestryInstance, field: 'indestryName', 'error')}</span>
				</div>
			</div>

