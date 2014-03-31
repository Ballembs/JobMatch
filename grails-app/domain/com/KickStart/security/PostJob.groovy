package com.KickStart.security
import java.util.Date;

import com.Helper.ListIndestry
import com.Helper.ListCity
import com.Helper.FunctionalArea
import com.Helper.UGList
import com.Helper.PGList

/**
 * PostJob
 * A domain class describes the data object and it's mapping to the database
 */
class PostJob {

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
	String jobTitle
	String jobDescription
	String keywords
	String workExperienceMin
	String workExperienceMax
	String cuurencyType
	String anaualCTC
	String anaualCTCMax
	String otherSalaryDetails
	int numberOfVacancies
	
	String specifyDoctoratePhd
	String candidateProfile
	//String companyName
	String hiringFor
	//String aboutCompany
	//String companyWebsite
	String contactPerson
	String contactNumber
	String emailId
	
	Date	dateCreated
	Date	lastUpdated
	ListIndestry industry
	FunctionalArea functionalArea
	JobProvider jobProvider
	static hasMany = [prefferedLocation : ListCity, ugList : UGList, pgList : PGList]
	static belongsTo = [JobProvider]
    static	mapping = {
    }
    
	static	constraints = {
		jobTitle(blank: false)
		jobDescription(black : false)
		keywords(blank: false)
		workExperienceMin(blank: false)
		workExperienceMax(blank: false)
		anaualCTC(blank: false)
		otherSalaryDetails(blank: true)
		numberOfVacancies(blank: false)
	
		specifyDoctoratePhd(blank: false)
		candidateProfile(blank: true)
		
		hiringFor(blank: false)
		
		
		contactPerson(blank: true)
		contactNumber(blank: true)
		emailId(blank: false, email: true)
		cuurencyType(nullable: true, inList : ['Rs','$'])
		jobProvider(nullable: true)
    }
	
	/*
	 * Methods of the Domain Class
	 */
//	@Override	// Override toString for a nicer / more descriptive UI 
//	public String toString() {
//		return "${name}";
//	}
}
