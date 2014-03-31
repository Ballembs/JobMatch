package com.Helper


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import grails.plugin.springsecurity.annotation.Secured
/**
 * ListCityController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class ListCityController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ListCity.list(params), model:[listCityInstanceCount: ListCity.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ListCity.list(params), model:[listCityInstanceCount: ListCity.count()]
    }

    def show(ListCity listCityInstance) {
        respond listCityInstance
    }

    def create() {
        respond new ListCity(params)
    }

    @Transactional
    def save(ListCity listCityInstance) {
        if (listCityInstance == null) {
            notFound()
            return
        }

        if (listCityInstance.hasErrors()) {
            respond listCityInstance.errors, view:'create'
            return
        }

        listCityInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'listCityInstance.label', default: 'ListCity'), listCityInstance.id])
                redirect listCityInstance
            }
            '*' { respond listCityInstance, [status: CREATED] }
        }
    }

    def edit(ListCity listCityInstance) {
        respond listCityInstance
    }

    @Transactional
    def update(ListCity listCityInstance) {
        if (listCityInstance == null) {
            notFound()
            return
        }

        if (listCityInstance.hasErrors()) {
            respond listCityInstance.errors, view:'edit'
            return
        }

        listCityInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ListCity.label', default: 'ListCity'), listCityInstance.id])
                redirect listCityInstance
            }
            '*'{ respond listCityInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ListCity listCityInstance) {

        if (listCityInstance == null) {
            notFound()
            return
        }

        listCityInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ListCity.label', default: 'ListCity'), listCityInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'listCityInstance.label', default: 'ListCity'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
