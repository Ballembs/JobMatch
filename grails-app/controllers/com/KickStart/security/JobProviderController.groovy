package com.KickStart.security


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
/**
 * JobProviderController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class JobProviderController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond JobProvider.list(params), model:[jobProviderInstanceCount: JobProvider.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond JobProvider.list(params), model:[jobProviderInstanceCount: JobProvider.count()]
    }

    def show(JobProvider jobProviderInstance) {
        respond jobProviderInstance
    }

    def create() {
        respond new JobProvider(params)
    }

    @Transactional
    def save(JobProvider jobProviderInstance) {
        if (jobProviderInstance == null) {
            notFound()
            return
        }

        if (jobProviderInstance.hasErrors()) {
            respond jobProviderInstance.errors, view:'create'
            return
        }

		
		
        jobProviderInstance.save flush:true
		
		def role = Role.findByAuthority('ROLE_JOBPROVIDER') ?: new Role(authority:'ROLE_JOBPROVIDER').save(failOnError:true)
		def user = User.findByUsername(jobProviderInstance.username)
		UserRole.create(user, role)

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'jobProviderInstance.label', default: 'JobProvider'), jobProviderInstance.id])
                redirect jobProviderInstance
            }
            '*' { respond jobProviderInstance, [status: CREATED] }
        }
    }

    def edit(JobProvider jobProviderInstance) {
        respond jobProviderInstance
    }

    @Transactional
    def update(JobProvider jobProviderInstance) {
        if (jobProviderInstance == null) {
            notFound()
            return
        }

        if (jobProviderInstance.hasErrors()) {
            respond jobProviderInstance.errors, view:'edit'
            return
        }

        jobProviderInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'JobProvider.label', default: 'JobProvider'), jobProviderInstance.id])
                redirect jobProviderInstance
            }
            '*'{ respond jobProviderInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(JobProvider jobProviderInstance) {

        if (jobProviderInstance == null) {
            notFound()
            return
        }

        jobProviderInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'JobProvider.label', default: 'JobProvider'), jobProviderInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'jobProviderInstance.label', default: 'JobProvider'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
