package com.Helper


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * FunctionalAreaController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class FunctionalAreaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FunctionalArea.list(params), model:[functionalAreaInstanceCount: FunctionalArea.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FunctionalArea.list(params), model:[functionalAreaInstanceCount: FunctionalArea.count()]
    }

    def show(FunctionalArea functionalAreaInstance) {
        respond functionalAreaInstance
    }

    def create() {
        respond new FunctionalArea(params)
    }

    @Transactional
    def save(FunctionalArea functionalAreaInstance) {
        if (functionalAreaInstance == null) {
            notFound()
            return
        }

        if (functionalAreaInstance.hasErrors()) {
            respond functionalAreaInstance.errors, view:'create'
            return
        }

        functionalAreaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'functionalAreaInstance.label', default: 'FunctionalArea'), functionalAreaInstance.id])
                redirect functionalAreaInstance
            }
            '*' { respond functionalAreaInstance, [status: CREATED] }
        }
    }

    def edit(FunctionalArea functionalAreaInstance) {
        respond functionalAreaInstance
    }

    @Transactional
    def update(FunctionalArea functionalAreaInstance) {
        if (functionalAreaInstance == null) {
            notFound()
            return
        }

        if (functionalAreaInstance.hasErrors()) {
            respond functionalAreaInstance.errors, view:'edit'
            return
        }

        functionalAreaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FunctionalArea.label', default: 'FunctionalArea'), functionalAreaInstance.id])
                redirect functionalAreaInstance
            }
            '*'{ respond functionalAreaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FunctionalArea functionalAreaInstance) {

        if (functionalAreaInstance == null) {
            notFound()
            return
        }

        functionalAreaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FunctionalArea.label', default: 'FunctionalArea'), functionalAreaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'functionalAreaInstance.label', default: 'FunctionalArea'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
