<%--<ul class="nav pull-right">--%>
	<li class="dropdown">
	
<sec:ifNotLoggedIn>

<%--		<a class="dropdown-toggle" data-toggle="dropdown" href="#">--%>
<%--			<!-- TODO: integrate Springsource Security etc. and show User's name ... -->--%>
<%--    		<i class="glyphicon glyphicon-user"></i>--%>
<%--    		<g:message code="security.signin.label"/><b class="caret"></b>--%>
<%--		</a>--%>
<%--		<ul class="nav navbar-nav">--%>
			<li class="">
				<a href="${createLink(uri: '/Login')}">					
					<g:message code="security.signin.label"/><b class="caret"></b>
				</a>
			</li>
<%--		<ul class="dropdown-menu" role="menu">--%>
<%--		<li>--%>
<%--		<section id="login" class="first">--%>
<%--			<div class="row">--%>
<%--				<div class="col-md-3"></div>--%>
<%--				<div class="col-md-6">--%>
<%--					<form role="form" id='loginForm' class='form-horizontal' action='${postUrl}' method='POST' autocomplete='off'>--%>
<%--							<div class="form-group ${hasErrors(bean: _DemoPageInstance, field: 'name', 'error')} ">--%>
<%--								<h3> <g:message code="springSecurity.login.header"/> </h3>--%>
<%--							</div>--%>
<%--							--%>
<%--							<div class="form-group ${hasErrors(bean: _DemoPageInstance, field: 'name', 'error')} ">--%>
<%--								<label for='username' class="control-label"><g:message code="springSecurity.login.username.label"/>:</label>--%>
<%--								<div class="controls">--%>
<%--									<input type='text' class='form-control col-md-4' name='j_username' id='username'/>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--				--%>
<%--							<div class="form-group ${hasErrors(bean: _DemoPageInstance, field: 'name', 'error')} ">--%>
<%--								<label for='password' class="control-label"><g:message code="springSecurity.login.password.label"/>:</label>--%>
<%--								<div class="controls">--%>
<%--									<input type='password' class='form-control col-md-4' name='j_password' id='password'/>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							--%>
<%--							<div id="remember_me_holder" class="form-group">--%>
<%--								<label for='remember_me' class="control-label"><g:message code="springSecurity.login.remember.me.label"/></label>--%>
<%--								<div class="controls">--%>
<%--									<bs:checkBox class="form-control col-md-4" name="${rememberMeParameter}" value="${hasCookie}" />--%>
<%--								</div>--%>
<%--							</div>--%>
<%--							--%>
<%--							<div class="form-group">--%>
<%--								<input type='submit' id="submit" class="btn btn-success" value='${message(code: "springSecurity.login.button")}'/>--%>
<%--							</div>--%>
<%--					</form>--%>
<%--				</div>--%>
<%--				<div class="col-md-3"></div>--%>
<%--			</div>--%>
<%--			</section>--%>
<%----%>
<%--			<script type='text/javascript'>--%>
<%--				<!----%>
<%--				(function() {--%>
<%--					document.forms['loginForm'].elements['j_username'].focus();--%>
<%--				})();--%>
<%--				// -->--%>
<%--			</script>--%>
<%--			</li>--%>
<%--			<li class="divider"></li>--%>
<%--			<li class="button-container">--%>
<%--				<!-- NOTE: the renderDialog MUST be placed outside the NavBar (at least for Bootstrap 2.1.1): see bottom of main.gsp -->--%>
<%--				<g:render template="/_common/modals/registerTextLink"/>--%>
<%--			</li>--%>
<%--		</ul>--%>

</sec:ifNotLoggedIn>
<sec:ifLoggedIn>

		<a class="dropdown-toggle" role="button" data-toggle="dropdown" data-target="#" href="#">
			<!-- TODO: Only show menu items based on permissions (e.g., Guest has no account page) -->
			<i class="glyphicon glyphicon-user icon-white"></i>
			<sec:username />
			<g:message code="default.user.unknown.label" default=""/> <b class="caret"></b>
		</a>
		<ul class="dropdown-menu" role="menu">
			<!-- TODO: Only show menu items based on permissions -->
			<li class=""><g:link controller="UserProfile" action="index" ><i><g:message code="Profile"/></i></g:link></li>			
			<li class="divider"></li>
			<li class="button-container">
			<li class=""><g:link controller="logout"><i><g:message code="Sign out"/></i></g:link>
			</li>
		</ul>

</sec:ifLoggedIn>

	</li>
<%--</ul>--%>

<noscript>
<ul class="nav pull-right">
	<li class="">
		<g:link controller="user" action="show"><g:message code="default.user.unknown.label"/></g:link>
	</li>
</ul>
</noscript>
