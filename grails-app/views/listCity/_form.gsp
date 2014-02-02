<%@ page import="com.Helper.ListCity" %>



			<div class="${hasErrors(bean: listCityInstance, field: 'cityName', 'error')} ">
				<label for="cityName" class="control-label"><g:message code="listCity.cityName.label" default="City Name" /></label>
				<div>
					<g:textField class="form-control" name="cityName" value="${listCityInstance?.cityName}"/>
					<span class="help-inline">${hasErrors(bean: listCityInstance, field: 'cityName', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: listCityInstance, field: 'userProfile', 'error')} ">
				<label for="userProfile" class="control-label"><g:message code="listCity.userProfile.label" default="User Profile" /></label>
				<div>
					
					<span class="help-inline">${hasErrors(bean: listCityInstance, field: 'userProfile', 'error')}</span>
				</div>
			</div>

