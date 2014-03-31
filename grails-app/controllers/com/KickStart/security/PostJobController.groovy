package com.KickStart.security


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
/**
 * PostJobController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Secured(['ROLE_JOBPROVIDER'])
@Transactional(readOnly = true)
class PostJobController {

	def mailSenderService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
       def authUser = authenticatedUser
		def jobs = PostJob.withCriteria{
			jobProvider{
				eq 'username', getAuthenticatedUser().username
			}
			maxResults 50
			order 'dateCreated', 'desc'
		}
        params.max = Math.min(max ?: 10, 100)
        respond jobs, model:[postJobInstanceCount: PostJob.count()]
    }

	def list(Integer max) {
		def authUser = authenticatedUser
		def jobs = PostJob.withCriteria{
			jobProvider{
				eq 'username', getAuthenticatedUser().username
			}
			order 'dateCreated', 'desc'
		}
        params.max = Math.min(max ?: 10, 100)
        respond jobs, model:[postJobInstanceCount: PostJob.count()]
    }
	
    def show(PostJob postJobInstance) {
        respond postJobInstance
    }

	@Secured(['ROLE_JOBPROVIDER'])
    def create() {
        respond new PostJob(params)
    }
	
	// get currently logged in user id
	private authenticatedUser()
	{
		getAuthenticatedUser().id
	}
    @Transactional
    def save(PostJob postJobInstance) {
		
		JobProvider jobp = new JobProvider()
		postJobInstance.jobProvider = jobp.get(authenticatedUser())
		
        if (postJobInstance == null) {
            notFound()
            return
        }
		
        if (postJobInstance.hasErrors()) {
            respond postJobInstance.errors, view:'create'
            return
        }
		
        postJobInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'postJobInstance.label', default: 'PostJob'), postJobInstance.id])
                redirect postJobInstance
				mailSenderService.sendMail(postJobInstance.contactPerson, postJobInstance.emailId)
            }
            '*' { respond postJobInstance, [status: CREATED]
				
			}
			
        }
    }

    def edit(PostJob postJobInstance) {
        respond postJobInstance
    }

    @Transactional
    def update(PostJob postJobInstance) {
        if (postJobInstance == null) {
            notFound()
            return
        }

        if (postJobInstance.hasErrors()) {
            respond postJobInstance.errors, view:'edit'
            return
        }

        postJobInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PostJob.label', default: 'PostJob'), postJobInstance.id])
                redirect postJobInstance
            }
            '*'{ respond postJobInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PostJob postJobInstance) {

        if (postJobInstance == null) {
            notFound()
            return
        }

        postJobInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PostJob.label', default: 'PostJob'), postJobInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'postJobInstance.label', default: 'PostJob'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
