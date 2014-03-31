package com.KickStart.security

import javax.swing.text.View;

/**
 * LogoutController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class LogoutController {

	def index()
	{
		session.invalidate();
		redirect(uri: "/")
	}
}
