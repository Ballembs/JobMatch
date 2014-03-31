package com.KickStart.security

class Role {

	String authority

	static mapping = {
		cache true
	}
	
	String toString() {
		"$authority"
	};

	static constraints = {
		authority blank: false, unique: true
	}
}
