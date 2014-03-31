<%@ page import="com.KickStart.security.JobProvider" %>



			<div class="${hasErrors(bean: jobProviderInstance, field: 'username', 'error')} required">
				<label for="username" class="control-label"><g:message code="jobProvider.username.label" default="Username" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="username" required="" value="${jobProviderInstance?.username}"/>
					<span class="help-inline">${hasErrors(bean: jobProviderInstance, field: 'username', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: jobProviderInstance, field: 'password', 'error')} required">
				<label for="password" class="control-label"><g:message code="jobProvider.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="password" required="" value="${jobProviderInstance?.password}"/>
					<span class="help-inline">${hasErrors(bean: jobProviderInstance, field: 'password', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: jobProviderInstance, field: 'confirmPassword', 'error')} required">
				<label for="confirmPassword" class="control-label"><g:message code="jobProvider.confirmPassword.label" default="Confirm Password" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="confirmPassword" required="" value="${jobProviderInstance?.confirmPassword}"/>
					<span class="help-inline">${hasErrors(bean: jobProviderInstance, field: 'confirmPassword', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: jobProviderInstance, field: 'companyName', 'error')} ">
				<label for="companyName" class="control-label"><g:message code="jobProvider.companyName.label" default="Company Name" /></label>
				<div>
					<g:textField class="form-control" name="companyName" value="${jobProviderInstance?.companyName}"/>
					<span class="help-inline">${hasErrors(bean: jobProviderInstance, field: 'companyName', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: jobProviderInstance, field: 'aboutCompany', 'error')} ">
				<label for="aboutCompany" class="control-label"><g:message code="jobProvider.aboutCompany.label" default="About Company" /></label>
				<div>
					<g:textField class="form-control" name="aboutCompany" value="${jobProviderInstance?.aboutCompany}"/>
					<span class="help-inline">${hasErrors(bean: jobProviderInstance, field: 'aboutCompany', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: jobProviderInstance, field: 'companyWebsite', 'error')} ">
				<label for="companyWebsite" class="control-label"><g:message code="jobProvider.companyWebsite.label" default="Company Website" /></label>
				<div>
					<g:textField class="form-control" name="companyWebsite" value="${jobProviderInstance?.companyWebsite}"/>
					<span class="help-inline">${hasErrors(bean: jobProviderInstance, field: 'companyWebsite', 'error')}</span>
				</div>
			</div>

