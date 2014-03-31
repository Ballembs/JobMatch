
<%@ page import="com.Helper.UGList" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'UGList.label', default: 'UGList')}" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'UserProfileCSS.css')}" type="text/css">
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-UGList" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="UGList.postJob.label" default="Post Job" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${UGListInstance.postJob}" var="p">
						<li><g:link controller="postJob" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="UGList.ugName.label" default="Ug Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: UGListInstance, field: "ugName")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
