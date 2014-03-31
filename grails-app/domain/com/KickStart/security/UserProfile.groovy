package com.KickStart.security

import java.util.Date;
import com.Helper.ListIndestry
import com.Helper.ListCity

/**
 * UserProfile
 * A domain class describes the data object and it's mapping to the database
 */
class UserProfile extends User {

	/* Default (injected) attributes of GORM */
//	Long	id
//	Long	version
	
	/* Automatic timestamping of GORM */
//	Date	dateCreated
//	Date	lastUpdated
	
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= []	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
	String email
	String firstName
	String lastName
	
	String nationality
	String currentLocation
	String mobileNumber
	String gender
	String totalExperience
	String keySkils
	Date	dateCreated
	Date	lastUpdated
	ListIndestry currentIndestry
	String qualification
	String certification
	String resumeTitle
	byte[] uploadResume
	
	String toString() {
		"$username"
	};
	static hasMany = [prefferedLocation : ListCity]
	
	
	static	constraints = {
		email(blank: false,email: true,unique: true)
		firstName(nullable : true, blank: false)
		lastName(nullable : true)
		nationality(nullable : true,blank: false)
		currentLocation(nullable : true,blank: false)
		mobileNumber(nullable : true,blank: false,minSize: 10)
		gender(nullable : true,inList: ["Male", "Female"])
		qualification(nullable : true, inList: ['Not pursuing Graduation','BA','B.Arch','BCA','B.B.A','B.Com','B.Ed.','BDS','BHM','B.Pharma','B.Sc','B.Tech/B.E','LLB','MBBBS','Diploma','BVSC','Other'])
		certification(nullable : true)
		totalExperience(nullable : true)
		keySkils(blank: false,nullable : true)
		uploadResume(maxSize: 1024 * 1024 * 2)
		resumeTitle(nullable : true)
	}
    static	mapping = {
    }
    
	
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
