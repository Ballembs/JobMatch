<%@ page import="com.Helper.FunctionalArea" %>



			<div class="${hasErrors(bean: functionalAreaInstance, field: 'functionalYear', 'error')} ">
				<label for="functionalYear" class="control-label"><g:message code="functionalArea.functionalYear.label" default="Functional Year" /></label>
				<div>
					<g:textField class="form-control" name="functionalYear" value="${functionalAreaInstance?.functionalYear}"/>
					<span class="help-inline">${hasErrors(bean: functionalAreaInstance, field: 'functionalYear', 'error')}</span>
				</div>
			</div>

