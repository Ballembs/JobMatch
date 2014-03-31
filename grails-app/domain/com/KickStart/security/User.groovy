package com.KickStart.security

class User {

	transient springSecurityService

	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	
	String toString()
	{
		"$username"
	}
	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
		accountExpired nullable : true
		accountLocked nullable : true
		passwordExpired nullable : true
		enabled nullable : true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
