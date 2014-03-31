
<%@ page import="com.KickStart.security.PostJob" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'postJob.label', default: 'PostJob')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-postJob" class="first show-section">

	<div  class="UserFormDiv" >
	<h4>Job DetailsM- Specify details of the position/job you are going to post</h4>
	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.jobTitle.label" default="Job Title" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: postJobInstance, field: "jobTitle")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.jobDescription.label" default="Job Description" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: postJobInstance, field: "jobDescription")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.keywords.label" default="Keywords" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: postJobInstance, field: "keywords")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.workExperienceMin.label" default="Work Experience" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: postJobInstance, field: "workExperienceMin")}
				<label> to </label>
				${fieldValue(bean: postJobInstance, field: "workExperienceMax")}</td>
				
			</tr>
		
			
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.anaualCTC.label" default="Anaual CTC" /></td>
				<td valign="top" class="value">${fieldValue(bean: postJobInstance, field: "cuurencyType")}
				<label>.</label>
				${fieldValue(bean: postJobInstance, field: "anaualCTC")}
				<label> to </label>
				${fieldValue(bean: postJobInstance, field: "anaualCTCMax")}
					
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.otherSalaryDetails.label" default="Other Salary Details" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: postJobInstance, field: "otherSalaryDetails")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.numberOfVacancies.label" default="Number Of Vacancies" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: postJobInstance, field: "numberOfVacancies")}</td>
				
			</tr>
			
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.prefferedLocation.label" default="Preffered Location" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${postJobInstance.prefferedLocation}" var="p">
						<li>${p?.encodeAsHTML()}</li>
					</g:each>
					</ul>
				</td>
				
			</tr>
			
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.industry.label" default="Industry" /></td>
				
				<td valign="top" class="value">${postJobInstance?.industry?.encodeAsHTML()}</td>
				
			</tr>
			
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.functionalArea.label" default="Functional Area" /></td>
				
				<td valign="top" class="value">${postJobInstance?.functionalArea?.encodeAsHTML()}</td>
				
			</tr>
		</tbody>
	</table>
	</div>
	<div  class="UserFormDiv" >
	<h4>Desired Candidate Profile - Specify details of the kind of person you are looking for this job</h4>
	<table class="table">
		<tbody>
				<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.ugList.label" default="UG qualification" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${postJobInstance.ugList}" var="u">
						<li>${u?.encodeAsHTML()}</li>
					</g:each>
					</ul>
				</td>
				
			</tr>
			
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.pgList.label" default="Pg Qualification" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${postJobInstance.pgList}" var="p">
						<li>${p?.encodeAsHTML()}</li>
					</g:each>
					</ul>
				</td>
				
			</tr>
			
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.specifyDoctoratePhd.label" default="Specify Doctorate Phd" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: postJobInstance, field: "specifyDoctoratePhd")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.candidateProfile.label" default="Candidate Profile" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: postJobInstance, field: "candidateProfile")}</td>
				
			</tr>
			</tbody>
			</table>
			</div>
			
	<div  class="UserFormDiv" >
	<h4>Advertise yourself -  Enter information of the employer, and the owner of this job posting</h4>
	<table class="table">
		<tbody>
					
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.hiringFor.label" default="Hiring For" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: postJobInstance, field: "hiringFor")}</td>
				
			</tr>
		
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.contactPerson.label" default="Contact Person" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: postJobInstance, field: "contactPerson")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.contactNumber.label" default="Contact Number" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: postJobInstance, field: "contactNumber")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="postJob.emailId.label" default="Email Id" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: postJobInstance, field: "emailId")}</td>
				
			</tr>
		
		
		</tbody>
	</table>
</section>

</body>

</html>
