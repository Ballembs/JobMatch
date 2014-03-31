package com.Helper


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

/**
 * UGListController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class UGListController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UGList.list(params), model:[UGListInstanceCount: UGList.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UGList.list(params), model:[UGListInstanceCount: UGList.count()]
    }

    def show(UGList UGListInstance) {
        respond UGListInstance
    }

    def create() {
        respond new UGList(params)
    }

    @Transactional
    def save(UGList UGListInstance) {
        if (UGListInstance == null) {
            notFound()
            return
        }

        if (UGListInstance.hasErrors()) {
            respond UGListInstance.errors, view:'create'
            return
        }

        UGListInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'UGListInstance.label', default: 'UGList'), UGListInstance.id])
                redirect UGListInstance
            }
            '*' { respond UGListInstance, [status: CREATED] }
        }
    }

    def edit(UGList UGListInstance) {
        respond UGListInstance
    }

    @Transactional
    def update(UGList UGListInstance) {
        if (UGListInstance == null) {
            notFound()
            return
        }

        if (UGListInstance.hasErrors()) {
            respond UGListInstance.errors, view:'edit'
            return
        }

        UGListInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UGList.label', default: 'UGList'), UGListInstance.id])
                redirect UGListInstance
            }
            '*'{ respond UGListInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UGList UGListInstance) {

        if (UGListInstance == null) {
            notFound()
            return
        }

        UGListInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UGList.label', default: 'UGList'), UGListInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'UGListInstance.label', default: 'UGList'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
