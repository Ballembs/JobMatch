package com.KickStart.security


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
/**
 * UserProfileController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class UserProfileController {

   def mailSenderService
   static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	
	@Secured(['ROLE_ADMIN','ROLE_USER','ROLE_JOBPROVIDER'])
	def index(Integer max) {
		def currentUser = getAuthenticatedUser().id
		def user = User.get(currentUser)
		if (user.authorities.any { it.authority == "ROLE_USER" })
		{
			UserProfile userProfileInstance = UserProfile.get(currentUser)
			redirect(action:"show", id: currentUser , params: [UserProfile: userProfileInstance])
		}
		else{
			params.max = Math.min(max ?: 10, 100)
			respond UserProfile.list(params), model:[userProfileInstanceCount: UserProfile.count()]
		}
      
    }

	@Secured(['ROLE_ADMIN','ROLE_JOBPROVIDER'])
	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UserProfile.list(params), model:[userProfileInstanceCount: UserProfile.count()]
    }
	
	//mailing action
	def mailMe(UserProfile userProfileInstance)
	{
		mailSenderService.sendMail(userProfileInstance.username, userProfileInstance.email)
	}

	@Secured(['IS_AUTHENTICATED_FULLY'])
    def show(UserProfile userProfileInstance) {
//		def currentUser = getAuthenticatedUser().id
//		if(currentUser == userProfileInstance.id)
			respond userProfileInstance
//		else
//		{
//			render status: NO_CONTENT
//		}
    }

	@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def create() {
        respond new UserProfile(params)
    }

    @Transactional
	@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def save(UserProfile userProfileInstance) {
        if (userProfileInstance == null) {
            notFound()
            return
        }

        if (userProfileInstance.hasErrors()) {
            respond userProfileInstance.errors, view:'create'
            return
        }
		
		userProfileInstance.resumeTitle =  request.getFile("uploadResume").getOriginalFilename().toString()
     
		
		
		if(!userProfileInstance.save(flush:true)){
			'*' { respond userProfileInstance, [status: CREATED] }
			return
		}
		else{
			flash.message = message(code: 'default.created.message', args: [message(code: 'userProfileInstance.label', default: 'UserProfile'), userProfileInstance.id])
			def role = Role.findByAuthority('ROLE_USER') ?: new Role(authority:'ROLE_USER').save(failOnError:true)
			def user = User.findByUsername(userProfileInstance.username)
			UserRole.create(user, role)
			redirect userProfileInstance
			//mailSenderService.sendMail(userProfileInstance.username, userProfileInstance.email)			
		}
    }

	@Secured(['ROLE_USER'])
    def edit(UserProfile userProfileInstance) {
		def currentUser = getAuthenticatedUser().id
		print currentUser
		if(currentUser == userProfileInstance.id)
			respond userProfileInstance
		else
		 	render status: NO_CONTENT
    }

	def downloadResume(UserProfile userProfileInstance)
	{
		response.setHeader("Content-disposition", "attachment;filename=${userProfileInstance.getResumeTitle()}")
		response.outputStream << userProfileInstance.getUploadResume()
	}

	@Secured(['ROLE_USER'])
    @Transactional
    def update(UserProfile userProfileInstance) {
        if (userProfileInstance == null) {
            notFound()
            return
        }

        if (userProfileInstance.hasErrors()) {
            respond userProfileInstance.errors, view:'edit'
            return
        }

        userProfileInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UserProfile.label', default: 'UserProfile'), userProfileInstance.id])
                redirect userProfileInstance
            }
            '*'{ respond userProfileInstance, [status: OK] }
        }
    }

	@Secured(['ROLE_USER'])
    @Transactional
    def delete(UserProfile userProfileInstance) {

        if (userProfileInstance == null) {
            notFound()
            return
        }

        userProfileInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UserProfile.label', default: 'UserProfile'), userProfileInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userProfileInstance.label', default: 'UserProfile'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
