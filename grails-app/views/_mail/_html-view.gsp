<%@ page import="com.KickStart.security.UserProfile"%>

<div class="UserFormDiv">
	<h4>Personal Information</h4>
	<div>
		<div class="${hasErrors(bean: userProfileInstance, field: 'About you', 'error')} required formCtrl">
			<label for="username" class="control-label"><g:message
					code="userProfile.username.label" default="Username" /><span
				class="required-indicator">*</span></label>
			
			<div>
				<g:textField class="form-control" name="username" required=""
					value="${userProfileInstance?.username}" />
				<span class="help-inline">
					${hasErrors(bean: userProfileInstance, field: 'username', 'error')}
				</span>
			</div>

		</div>
	</div>
</div>