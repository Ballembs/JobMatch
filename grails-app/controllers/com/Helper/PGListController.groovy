package com.Helper


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

/**
 * PGListController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class PGListController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PGList.list(params), model:[PGListInstanceCount: PGList.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PGList.list(params), model:[PGListInstanceCount: PGList.count()]
    }

    def show(PGList PGListInstance) {
        respond PGListInstance
    }

    def create() {
        respond new PGList(params)
    }

    @Transactional
    def save(PGList PGListInstance) {
        if (PGListInstance == null) {
            notFound()
            return
        }

        if (PGListInstance.hasErrors()) {
            respond PGListInstance.errors, view:'create'
            return
        }

        PGListInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'PGListInstance.label', default: 'PGList'), PGListInstance.id])
                redirect PGListInstance
            }
            '*' { respond PGListInstance, [status: CREATED] }
        }
    }

    def edit(PGList PGListInstance) {
        respond PGListInstance
    }

    @Transactional
    def update(PGList PGListInstance) {
        if (PGListInstance == null) {
            notFound()
            return
        }

        if (PGListInstance.hasErrors()) {
            respond PGListInstance.errors, view:'edit'
            return
        }

        PGListInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PGList.label', default: 'PGList'), PGListInstance.id])
                redirect PGListInstance
            }
            '*'{ respond PGListInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PGList PGListInstance) {

        if (PGListInstance == null) {
            notFound()
            return
        }

        PGListInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PGList.label', default: 'PGList'), PGListInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'PGListInstance.label', default: 'PGList'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
