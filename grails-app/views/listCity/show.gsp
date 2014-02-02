
<%@ page import="com.Helper.ListCity" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'listCity.label', default: 'ListCity')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-listCity" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="listCity.cityName.label" default="City Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: listCityInstance, field: "cityName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="listCity.userProfile.label" default="User Profile" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${listCityInstance.userProfile}" var="u">
						<li><g:link controller="userProfile" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
