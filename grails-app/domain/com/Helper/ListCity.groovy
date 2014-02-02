package com.Helper
import com.KickStart.security.UserProfile

class ListCity {

	String cityName
	
	String toString() {
		cityName
	}
	static hasMany = [userProfile : UserProfile]
	static belongsTo = [UserProfile]
    static constraints = {
    }
}
