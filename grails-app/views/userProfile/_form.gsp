<%@ page import="com.KickStart.security.UserProfile" %>



			<div class="${hasErrors(bean: userProfileInstance, field: 'username', 'error')} required">
				<label for="username" class="control-label"><g:message code="userProfile.username.label" default="Username" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="username" required="" value="${userProfileInstance?.username}"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'username', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'password', 'error')} required">
				<label for="password" class="control-label"><g:message code="userProfile.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="password" required="" value="${userProfileInstance?.password}"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'password', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'email', 'error')} required">
				<label for="email" class="control-label"><g:message code="userProfile.email.label" default="Email" /><span class="required-indicator">*</span></label>
				<div>
					<g:field class="form-control" type="email" name="email" required="" value="${userProfileInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'firstName', 'error')} required">
				<label for="firstName" class="control-label"><g:message code="userProfile.firstName.label" default="First Name" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="firstName" required="" value="${userProfileInstance?.firstName}"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'firstName', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'lastName', 'error')} ">
				<label for="lastName" class="control-label"><g:message code="userProfile.lastName.label" default="Last Name" /></label>
				<div>
					<g:textField class="form-control" name="lastName" value="${userProfileInstance?.lastName}"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'lastName', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'nationality', 'error')} required">
				<label for="nationality" class="control-label"><g:message code="userProfile.nationality.label" default="Nationality" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="nationality" required="" value="${userProfileInstance?.nationality}"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'nationality', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'currentLocation', 'error')} required">
				<label for="currentLocation" class="control-label"><g:message code="userProfile.currentLocation.label" default="Current Location" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="currentLocation" required="" value="${userProfileInstance?.currentLocation}"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'currentLocation', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'mobileNumber', 'error')} required">
				<label for="mobileNumber" class="control-label"><g:message code="userProfile.mobileNumber.label" default="Mobile Number" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="mobileNumber" required="" value="${userProfileInstance?.mobileNumber}"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'mobileNumber', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'gender', 'error')} ">
				<label for="gender" class="control-label"><g:message code="userProfile.gender.label" default="Gender" /></label>
				<div>
					<g:select class="form-control" name="gender" from="${userProfileInstance.constraints.gender.inList}" value="${userProfileInstance?.gender}" valueMessagePrefix="userProfile.gender" noSelection="['': '']"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'gender', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'totalExperience', 'error')} ">
				<label for="totalExperience" class="control-label"><g:message code="userProfile.totalExperience.label" default="Total Experience" /></label>
				<div>
					<g:textField class="form-control" name="totalExperience" value="${userProfileInstance?.totalExperience}"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'totalExperience', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'months', 'error')} ">
				<label for="months" class="control-label"><g:message code="userProfile.months.label" default="Months" /></label>
				<div>
					<g:textField class="form-control" name="months" value="${userProfileInstance?.months}"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'months', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'jobType', 'error')} required">
				<label for="jobType" class="control-label"><g:message code="userProfile.jobType.label" default="Job Type" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="jobType" required="" value="${userProfileInstance?.jobType}"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'jobType', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'keySkils', 'error')} required">
				<label for="keySkils" class="control-label"><g:message code="userProfile.keySkils.label" default="Key Skils" /><span class="required-indicator">*</span></label>
				<div>
					<g:textField class="form-control" name="keySkils" required="" value="${userProfileInstance?.keySkils}"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'keySkils', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'resume', 'error')} ">
				<label for="resume" class="control-label"><g:message code="userProfile.resume.label" default="Resume" /></label>
				<div>
					<input type="file" id="resume" name="resume" />
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'resume', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'accountExpired', 'error')} ">
				<label for="accountExpired" class="control-label"><g:message code="userProfile.accountExpired.label" default="Account Expired" /></label>
				<div>
					<bs:checkBox name="accountExpired" value="${userProfileInstance?.accountExpired}" />
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'accountExpired', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'accountLocked', 'error')} ">
				<label for="accountLocked" class="control-label"><g:message code="userProfile.accountLocked.label" default="Account Locked" /></label>
				<div>
					<bs:checkBox name="accountLocked" value="${userProfileInstance?.accountLocked}" />
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'accountLocked', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'currentIndestry', 'error')} required">
				<label for="currentIndestry" class="control-label"><g:message code="userProfile.currentIndestry.label" default="Current Indestry" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="currentIndestry" name="currentIndestry.id" from="${com.Helper.ListIndestry.list()}" optionKey="id" required="" value="${userProfileInstance?.currentIndestry?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'currentIndestry', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'enabled', 'error')} ">
				<label for="enabled" class="control-label"><g:message code="userProfile.enabled.label" default="Enabled" /></label>
				<div>
					<bs:checkBox name="enabled" value="${userProfileInstance?.enabled}" />
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'enabled', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'function', 'error')} ">
				<label for="function" class="control-label"><g:message code="userProfile.function.label" default="Function" /></label>
				<div>
					<g:textField class="form-control" name="function" value="${userProfileInstance?.function}"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'function', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'passwordExpired', 'error')} ">
				<label for="passwordExpired" class="control-label"><g:message code="userProfile.passwordExpired.label" default="Password Expired" /></label>
				<div>
					<bs:checkBox name="passwordExpired" value="${userProfileInstance?.passwordExpired}" />
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'passwordExpired', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userProfileInstance, field: 'prefferedLocation', 'error')} ">
				<label for="prefferedLocation" class="control-label"><g:message code="userProfile.prefferedLocation.label" default="Preffered Location" /></label>
				<div>
					<g:select class="form-control" name="prefferedLocation" from="${com.Helper.ListCity.list()}" multiple="multiple" optionKey="id" size="5" value="${userProfileInstance?.prefferedLocation*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'prefferedLocation', 'error')}</span>
				</div>
			</div>

