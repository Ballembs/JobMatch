<%@ page import="com.KickStart.security.PostJob" %>

	
	<div  class="UserFormDiv" >
		<div><h4>Job DetailsM- Specify details of the position/job you are going to post</h4></div>
		<div>
			<div class="${hasErrors(bean: postJobInstance, field: 'jobTitle', 'error')} required">
			
				<label for="jobTitle" class="control-label"><g:message
							code="postJob.jobTitle.label" default="Job Title" /><span
						class="required-indicator">*</span></label>
				
					<div>
						<g:textField class="form-control" name="jobTitle" required=""
							value="${postJobInstance?.jobTitle}" />
						<span class="help-inline">
							${hasErrors(bean: postJobInstance, field: 'jobTitle', 'error')}
						</span>
					</div>
				
			
		</div>

			<div class="${hasErrors(bean: postJobInstance, field: 'jobDescription', 'error')} ">
				
				<label for="jobDescription" class="control-label"><g:message code="postJob.jobDescription.label" default="Job Description" /></label>
				
				<div>
					<g:textField class="form-control" name="jobDescription" value="${postJobInstance?.jobDescription}"/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'jobDescription', 'error')}</span>
				</div>
				
				
			</div>

			<div class="${hasErrors(bean: postJobInstance, field: 'keywords', 'error')} required">
				
				<label for="keywords" class="control-label"><g:message code="postJob.keywords.label" default="Keywords" /><span class="required-indicator">*</span></label>
				
				<div>
					<g:textField class="form-control" name="keywords" required="" value="${postJobInstance?.keywords}"/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'keywords', 'error')}</span>
				</div>
				
				
			</div>

				
			<div class="${hasErrors(bean: postJobInstance, field: 'workExperienceMin', 'error')} required">
				
				<label for="workExperienceMin" class="control-label"><g:message code="postJob.workExperienceMin.label" default="Work Experience" /><span class="required-indicator">*</span></label>
				
				<table><td><div>
					<g:select class="form-control" name="workExperienceMin" from="${1..60}" value="${postJobInstance?.workExperienceMin}" valueMessagePrefix="postJob.workExperienceMin" noSelection="['': 'Min']"/>
<%--					<g:textField class="form-control" name="workExperienceMin" required="" value="${postJobInstance?.workExperienceMin}"/>--%>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'workExperienceMin', 'error')}</span>
				</div></td><td><lable style="text-align: center">to</lable></td>
				<td>
				<div>
				<g:select class="form-control" name="workExperienceMax" from="${1..60}" value="${postJobInstance?.workExperienceMax}" valueMessagePrefix="postJob.workExperienceMax" noSelection="['': 'Max']"/>
<%--					<g:textField class="form-control" name="workExperienceMax" required="" value="${postJobInstance?.workExperienceMax}"/>--%>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'workExperienceMax', 'error')}</span>
				</div></td></table>	
				
			</div>

			<div class="${hasErrors(bean: postJobInstance, field: 'anaualCTC', 'error')} required">
				
				<label for="anaualCTC" class="control-label"><g:message code="postJob.anaualCTC.label" default="Anaual CTC" /><span class="required-indicator">*</span></label>
				
				<table><td><div>
					<g:select class="form-control" name="cuurencyType" from="${postJobInstance.constraints.cuurencyType.inList}" value="${postJobInstance?.cuurencyType}" valueMessagePrefix="postJob.cuurencyType" noSelection="['': 'Type']"/>
					<span class="help-inline">${hasErrors(bean: userProfileInstance, field: 'cuurencyType', 'error')}</span>
				</div></td><td>
				<div>
					<g:select class="form-control" name="anaualCTC" from="${1..50}" value="${postJobInstance?.anaualCTC}" valueMessagePrefix="postJob.anaualCTC" noSelection="['': 'Min']"/>
<%--					<g:textField class="form-control" name="anaualCTC" required="" value="${postJobInstance?.anaualCTC}"/>--%>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'anaualCTC', 'error')}</span>
				</div></td><td>
				<div>
					<g:select class="form-control" name="anaualCTCMax" from="${10..59}" value="${postJobInstance?.anaualCTCMax}" valueMessagePrefix="postJob.anaualCTCMax" noSelection="['': 'Max']"/>
<%--					<g:textField class="form-control" name="anaualCTC" required="" value="${postJobInstance?.anaualCTC}"/>--%>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'anaualCTCMax', 'error')}</span>
				</div>
				</td></table>
			
			</div>

			<div class="${hasErrors(bean: postJobInstance, field: 'otherSalaryDetails', 'error')} ">
				
				<label for="otherSalaryDetails" class="control-label"><g:message code="postJob.otherSalaryDetails.label" default="Other Salary Details" /></label>
				
				<div>
					<g:textField class="form-control" name="otherSalaryDetails" value="${postJobInstance?.otherSalaryDetails}"/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'otherSalaryDetails', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: postJobInstance, field: 'numberOfVacancies', 'error')} required">
				
				<label for="numberOfVacancies" class="control-label"><g:message code="postJob.numberOfVacancies.label" default="Number Of Vacancies" /><span class="required-indicator">*</span></label>
				
				<div>
					<g:field class="form-control" name="numberOfVacancies" type="number" value="${postJobInstance.numberOfVacancies}" required=""/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'numberOfVacancies', 'error')}</span>
				</div>
				
			</div>
		<div class="${hasErrors(bean: postJobInstance, field: 'prefferedLocation', 'error')} ">
				<label for="prefferedLocation" class="control-label"><g:message code="postJob.prefferedLocation.label" default="Job Location" /></label>
				
				<div>
					<g:select class="form-control many-to-many" name="prefferedLocation" from="${com.Helper.ListCity.list()}" multiple="multiple" optionKey="id" size="5" value="${postJobInstance?.prefferedLocation*.id}"/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'prefferedLocation', 'error')}</span>
				</div>
			</div>
			<div class="${hasErrors(bean: postJobInstance, field: 'industry', 'error')} required">
				<label for="industry" class="control-label"><g:message code="postJob.industry.label" default="Industry" /><span class="required-indicator">*</span></label>
				
				<div>
					<g:select class="form-control many-to-one" id="industry" name="industry.id" from="${com.Helper.ListIndestry.list()}" optionKey="id" required="" value="${postJobInstance?.industry?.id}"/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'industry', 'error')}</span>
				</div>
			</div>
			<div class="${hasErrors(bean: postJobInstance, field: 'functionalArea', 'error')} required">
				<label for="functionalArea" class="control-label"><g:message code="postJob.functionalArea.label" default="Functional Area" /><span class="required-indicator">*</span></label>
				
				<div>
					<g:select class="form-control many-to-one" id="functionalArea" name="functionalArea.id" from="${com.Helper.FunctionalArea.list()}" optionKey="id" required="" value="${postJobInstance?.functionalArea?.id}"/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'functionalArea', 'error')}</span>
				</div>
				
			</div>
			
	</div>
	</div>
	<div  class="UserFormDiv" >
		<h4>Desired Candidate Profile - Specify details of the kind of person you are looking for this job</h4>
		<div>
				<div class="${hasErrors(bean: postJobInstance, field: 'ugList', 'error')} ">
				
				<label for="ugList" class="control-label"><g:message code="postJob.ugList.label" default="Specify UG Qualification" /></label>
				
				<div>
					<g:select class="form-control many-to-many" name="ugList" from="${com.Helper.UGList.list()}" multiple="multiple" optionKey="id" size="5" value="${postJobInstance?.ugList*.id}"/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'ugList', 'error')}</span>
				</div>
				
				
			</div>
				<div class="${hasErrors(bean: postJobInstance, field: 'pgList', 'error')} ">
				
				<label for="pgList" class="control-label"><g:message code="postJob.pgList.label" default="Specify Pg Qualification" /></label>
				
				<div>
					<g:select class="form-control many-to-many" name="pgList" from="${com.Helper.PGList.list()}" multiple="multiple" optionKey="id" size="5" value="${postJobInstance?.pgList*.id}" />
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'pgList', 'error')}</span>
				</div>
			</div>
			
			<div class="${hasErrors(bean: postJobInstance, field: 'specifyDoctoratePhd', 'error')} required">
				
				<label for="specifyDoctoratePhd" class="control-label"><g:message code="postJob.specifyDoctoratePhd.label" default="Specify Doctorate Phd" /><span class="required-indicator">*</span></label>
				
				<div>
					<g:textField class="form-control" name="specifyDoctoratePhd" required="" value="${postJobInstance?.specifyDoctoratePhd}"/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'specifyDoctoratePhd', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: postJobInstance, field: 'candidateProfile', 'error')} ">
				
				<label for="candidateProfile" class="control-label"><g:message code="postJob.candidateProfile.label" default="Candidate Profile" /></label>
				
				<div>
					<g:textArea rows="5" class="form-control" name="candidateProfile" value="${postJobInstance?.candidateProfile}"/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'candidateProfile', 'error')}</span>
				</div>
				
			</div>
		</div>
		</div>
		
		<div  class="UserFormDiv" >
		<h4>Advertise yourself -  Enter information of the employer, and the owner of this job posting</h4>
		<div>
		
			<div class="${hasErrors(bean: postJobInstance, field: 'hiringFor', 'error')} required">
				
				<label for="hiringFor" class="control-label"><g:message code="postJob.hiringFor.label" default="Hiring For" /><span class="required-indicator">*</span></label>
				
				<div>
					<g:textField class="form-control" name="hiringFor" required="" value="${postJobInstance?.hiringFor}"/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'hiringFor', 'error')}</span>
				</div>
			</div>

			
			<div class="${hasErrors(bean: postJobInstance, field: 'contactPerson', 'error')} ">
				
				<label for="contactPerson" class="control-label"><g:message code="postJob.contactPerson.label" default="Contact Person" /></label>
				
				<div>
					<g:textField class="form-control" name="contactPerson" value="${postJobInstance?.contactPerson}"/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'contactPerson', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: postJobInstance, field: 'contactNumber', 'error')} ">
				
				<label for="contactNumber" class="control-label"><g:message code="postJob.contactNumber.label" default="Contact Number" /></label>
				
				<div>
					<g:textField class="form-control" name="contactNumber" value="${postJobInstance?.contactNumber}"/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'contactNumber', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: postJobInstance, field: 'emailId', 'error')} required">
				
				<label for="emailId" class="control-label"><g:message code="postJob.emailId.label" default="Email Id" /><span class="required-indicator">*</span></label>
				
				<div>
					<g:field class="form-control" type="email" name="emailId" required="" value="${postJobInstance?.emailId}"/>
					<span class="help-inline">${hasErrors(bean: postJobInstance, field: 'emailId', 'error')}</span>
				</div>
			</div>
			
							
	</div>
</div>
