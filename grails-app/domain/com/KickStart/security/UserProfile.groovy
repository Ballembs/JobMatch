package com.KickStart.security
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
	
	String jobType
	String totalExperience
	String function
	String keySkils
	String months
	Date	dateCreated
	Date	lastUpdated
	byte[] resume
	static attachmentable = true
	ListIndestry currentIndestry
	static hasMany = [prefferedLocation : ListCity]
    static	mapping = {
    }
    
	static	constraints = {
		email(blank: false,email: true,unique: true)
		firstName(blank: false)
		lastName()
		nationality(blank: false)
		currentLocation(blank: false)
		mobileNumber(blank: false,minSize: 10)
		gender(inList: ["Male", "Female"])
		
		totalExperience()
		months()
		jobType(blank: false)
		keySkils(blank: false)
		resume(nullable: true,maxSize: 132768)
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
