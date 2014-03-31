package com.KickStart.security

/**
 * JobProvider
 * A domain class describes the data object and it's mapping to the database
 */
class JobProvider extends User{

	String confirmPassword
	String companyName
	String aboutCompany
	String companyWebsite
	/* Default (injected) attributes of GORM */
//	Long	id
//	Long	version
	
	/* Automatic timestamping of GORM */
//	Date	dateCreated
//	Date	lastUpdated
	
//	static	belongsTo	= []	// tells GORM to cascade commands: e.g., delete this object if the "parent" is deleted.
//	static	hasOne		= []	// tells GORM to associate another domain object as an owner in a 1-1 mapping
//	static	hasMany		= [jobs: PostJob]	// tells GORM to associate other domain objects for a 1-n or n-m mapping
//	static	mappedBy	= []	// specifies which property should be used in a mapping 
	
	
	
    static	mapping = {
    }
    
	static	constraints = {
		confirmPassword blank: false, nullable: false
		companyName unique: true
		aboutCompany nullable: true
		companyWebsite nullable: true
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
