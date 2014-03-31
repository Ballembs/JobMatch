package com.Helper


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * ListIndestryController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
import grails.plugin.springsecurity.annotation.Secured
/**
 * PostJobController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class ListIndestryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ListIndestry.list(params), model:[listIndestryInstanceCount: ListIndestry.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ListIndestry.list(params), model:[listIndestryInstanceCount: ListIndestry.count()]
    }

    def show(ListIndestry listIndestryInstance) {
        respond listIndestryInstance
    }

    def create() {
        respond new ListIndestry(params)
    }

    @Transactional
    def save(ListIndestry listIndestryInstance) {
        if (listIndestryInstance == null) {
            notFound()
            return
        }

        if (listIndestryInstance.hasErrors()) {
            respond listIndestryInstance.errors, view:'create'
            return
        }

        listIndestryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'listIndestryInstance.label', default: 'ListIndestry'), listIndestryInstance.id])
                redirect listIndestryInstance
            }
            '*' { respond listIndestryInstance, [status: CREATED] }
        }
    }

    def edit(ListIndestry listIndestryInstance) {
        respond listIndestryInstance
    }

    @Transactional
    def update(ListIndestry listIndestryInstance) {
        if (listIndestryInstance == null) {
            notFound()
            return
        }

        if (listIndestryInstance.hasErrors()) {
            respond listIndestryInstance.errors, view:'edit'
            return
        }

        listIndestryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ListIndestry.label', default: 'ListIndestry'), listIndestryInstance.id])
                redirect listIndestryInstance
            }
            '*'{ respond listIndestryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ListIndestry listIndestryInstance) {

        if (listIndestryInstance == null) {
            notFound()
            return
        }

        listIndestryInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ListIndestry.label', default: 'ListIndestry'), listIndestryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'listIndestryInstance.label', default: 'ListIndestry'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
