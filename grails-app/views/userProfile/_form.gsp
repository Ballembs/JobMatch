<%@ page import="com.KickStart.security.UserProfile"%>



<div class="UserFormDiv">
	<h4>Personal Information</h4>
	<div>
		<div class="${hasErrors(bean: userProfileInstance, field: 'username', 'error')} required formCtrl">
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

		<div class="${hasErrors(bean: userProfileInstance, field: 'password', 'error')} required formCtrl">
			
				<label for="password" class="control-label"><g:message
							code="userProfile.password.label" default="Password" /><span
						class="required-indicator">*</span></label>
				<div>
						<g:textField class="form-control" name="password" required=""
							value="${userProfileInstance?.password}" />
						<span class="help-inline">
							${hasErrors(bean: userProfileInstance, field: 'password', 'error')}
						</span>
					</div>
			
		</div>


		<div
			class="${hasErrors(bean: userProfileInstance, field: 'firstName', 'error')} required formCtrl">
			
				<label for="firstName" class="control-label"><g:message
							code="userProfile.firstName.label" default="First Name" /><span
						class="required-indicator">*</span></label>
				
					<div>
						<g:textField class="form-control" name="firstName" required=""
							value="${userProfileInstance?.firstName}" />
						<span class="help-inline">
							${hasErrors(bean: userProfileInstance, field: 'firstName', 'error')}
						</span>
					</div>
				
			
		</div>

		<div
			class="${hasErrors(bean: userProfileInstance, field: 'lastName', 'error')} formCtrl">
			
				<label for="lastName" class="control-label"><g:message
							code="userProfile.lastName.label" default="Last Name" /></label>
				<div>
						<g:textField class="form-control" name="lastName"
							value="${userProfileInstance?.lastName}" />
						<span class="help-inline">
							${hasErrors(bean: userProfileInstance, field: 'lastName', 'error')}
						</span>
					</div>
			
		</div>

		<div
			class="${hasErrors(bean: userProfileInstance, field: 'gender', 'error')} formCtrl">
			

				<label for="gender" class="control-label"><g:message
							code="userProfile.gender.label" default="Gender" /></label>
				
					<div>
						<g:select class="form-control" name="gender"
							from="${userProfileInstance.constraints.gender.inList}"
							value="${userProfileInstance?.gender}"
							valueMessagePrefix="userProfile.gender"
							noSelection="['': '-choose gender-']" />
						<span class="help-inline">
							${hasErrors(bean: userProfileInstance, field: 'gender', 'error')}
						</span>
					</div>
				
			
		</div>
	</div>
</div>

<div class="UserFormDiv">
	<h4>Contact Information</h4>
	<div>
		<div
			class="${hasErrors(bean: userProfileInstance, field: 'email', 'error')} required formCtrl">
			
				<label for="email" class="control-label"><g:message
							code="userProfile.email.label" default="Email" /><span
						class="required-indicator">*</span></label>
				
					<div>
						<g:field class="form-control" type="email" name="email"
							required="" value="${userProfileInstance?.email}" />
						<span class="help-inline">
							${hasErrors(bean: userProfileInstance, field: 'email', 'error')}
						</span>
					</div>
				
			
		</div>
		<div
			class="${hasErrors(bean: userProfileInstance, field: 'nationality', 'error')} required formCtrl">
			
				<tr>
					<label for="nationality" class="control-label"><g:message
								code="userProfile.nationality.label" default="Nationality" /><span
							class="required-indicator">*</span></label>
					<div>
							<g:countrySelect class="form-control" name="nationality"
								value="${nationality}"
								noSelection="['':'-Choose your country-']" />

							<span class="help-inline">
								${hasErrors(bean: userProfileInstance, field: 'nationality', 'error')}
							</span>
						</div>
				</tr>
			
		</div>

		<div
			class="${hasErrors(bean: userProfileInstance, field: 'currentLocation', 'error')} required formCtrl">
			
				<label for="currentLocation" class="control-label"><g:message
							code="userProfile.currentLocation.label"
							default="Current Location" /><span class="required-indicator">*</span></label>
				
					<div>
						<g:textField class="form-control" name="currentLocation"
							required="" value="${userProfileInstance?.currentLocation}" />
						<span class="help-inline">
							${hasErrors(bean: userProfileInstance, field: 'currentLocation', 'error')}
						</span>
					</div>
				
			
		</div>

		<div
			class="${hasErrors(bean: userProfileInstance, field: 'mobileNumber', 'error')} required formCtrl">
			
				<label for="mobileNumber" class="control-label"><g:message
							code="userProfile.mobileNumber.label" default="Mobile Number" /><span
						class="required-indicator">*</span></label>
				
					<div>
						<g:textField class="form-control" name="mobileNumber" required=""
							value="${userProfileInstance?.mobileNumber}" />
						<span class="help-inline">
							${hasErrors(bean: userProfileInstance, field: 'mobileNumber', 'error')}
						</span>
					</div>
				
			
		</div>
	</div>
</div>
<div class="UserFormDiv">
	<h4>Job profile details</h4>

	<div
		class="${hasErrors(bean: userProfileInstance, field: 'totalExperience', 'error')} formCtrl">
		
			<label for="totalExperience" class="control-label"><g:message
						code="userProfile.totalExperience.label"
						default="Total Experience" /></label>
			
				<div>
					<g:select class="form-control" name="totalExperience"
						from="${1..60}" value="${userProfileInstance?.totalExperience}"
						valueMessagePrefix="userProfile.totalExperience"
						noSelection="['': '-Select your experience-']" />

					<span class="help-inline">
						${hasErrors(bean: userProfileInstance, field: 'totalExperience', 'error') } 
					</span>
				</div>
			
		
	</div>
	<div
		class="${hasErrors(bean: userProfileInstance, field: 'qualification', 'error')} formCtrl ">
		
			<label for="qualification" class="control-label"><g:message
						code="userProfile.qualification.label" default="Qualification" /></label>
			
				<div>
					<g:select class="form-control" name="qualification"
						from="${userProfileInstance.constraints.qualification.inList}"
						value="${userProfileInstance?.qualification}"
						valueMessagePrefix="userProfile.qualification"
						noSelection="['': '-Select Qualification-']" />
					<span class="help-inline">
						${hasErrors(bean: userProfileInstance, field: 'qualification', 'error')}
					</span>
				</div>
			
		
	</div>


	<div
		class="${hasErrors(bean: userProfileInstance, field: 'certification', 'error')} formCtrl">
		
			<label for="certification" class="control-label"><g:message
						code="userProfile.certification.label" default="Certification" /></label>
			<div>
					<g:textField class="form-control" name="certification"
						value="${userProfileInstance?.certification}" />
					<span class="help-inline">
						${hasErrors(bean: userProfileInstance, field: 'certification', 'error')}
					</span>
				</div>
		
	</div>



	<div
		class="${hasErrors(bean: userProfileInstance, field: 'keySkils', 'error')} required formCtrl">
		
			<label for="keySkils" class="control-label"><g:message
						code="userProfile.keySkils.label" default="Key Skils" /><span
					class="required-indicator">*</span></label>
			
				<div>
					<g:textField class="form-control" name="keySkils" required=""
						value="${userProfileInstance?.keySkils}" />
					<span class="help-inline">
						${hasErrors(bean: userProfileInstance, field: 'keySkils', 'error')}
					</span>
				</div>
			
		
	</div>


	<div
		class="${hasErrors(bean: userProfileInstance, field: 'currentIndestry', 'error')} required formCtrl">
		
			<label for="currentIndestry" class="control-label"><g:message
						code="userProfile.currentIndestry.label"
						default="Current Indestry" /><span class="required-indicator">*</span></label>

			<div>
					<g:select class="form-control many-to-one" id="currentIndestry"
						name="currentIndestry.id" from="${com.Helper.ListIndestry.list()}"
						optionKey="id" required=""
						value="${userProfileInstance?.currentIndestry?.id}" />
					<span class="help-inline">
						${hasErrors(bean: userProfileInstance, field: 'currentIndestry', 'error')}
					</span>
				</div>
		
	</div>



	<div
		class="${hasErrors(bean: userProfileInstance, field: 'prefferedLocation', 'error')}  multiselect formCtrl">
		
			<label for="prefferedLocation" class="control-label"><g:message
						code="userProfile.prefferedLocation.label"
						default="Preffered Location" /></label>
			
				<div>
					<%--					<ui:multiSelect name="prefferedLocation"--%>
					<%--                                 from="${com.Helper.ListCity.list()}" --%>
					<%--                                 value="${userProfileInstance?.prefferedLocation*.id}" --%>
					<%--                                 multiple="yes" --%>
					<%--                                 noSelection="['':'Select One']" class="many-to-many"/>--%>
					<g:select name="prefferedLocation"
						class="form-control many-to-many"
						from="${com.Helper.ListCity.list()}" multiple="multiple"
						optionKey="id" size="5"
						value="${userProfileInstance?.prefferedLocation*.id}" />
					<span class="help-inline">
						${hasErrors(bean: userProfileInstance, field: 'prefferedLocation', 'error')}
					</span>
				</div>
			
		
	</div>
</div>
<div class="UserFormDiv">
	<div
		class="${hasErrors(bean: userProfileInstance, field: 'uploadResume', 'error')} required formCtrl">
		
			<label for="uploadResume" class="control-label"><g:message
						code="userProfile.uploadResume.label" default="Upload Resume" /><span
					class="required-indicator">*</span></label>
			

				<div class="form-actions margin-top-medium">
					<input type="file" id="uploadResume" name="uploadResume"
						class="btn btn-upload" /> <span class="help-inline">
						${hasErrors(bean: userProfileInstance, field: 'uploadResume', 'error')}
					</span>
				</div>
			
		
	</div>
</div>