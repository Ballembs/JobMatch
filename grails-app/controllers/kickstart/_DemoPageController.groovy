package kickstart


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * _DemoPageController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class _DemoPageController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond _DemoPage.list(params), model:[_DemoPageInstanceCount: _DemoPage.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond _DemoPage.list(params), model:[_DemoPageInstanceCount: _DemoPage.count()]
    }

    def show(_DemoPage _DemoPageInstance) {
        respond _DemoPageInstance
    }

    def create() {
        respond new _DemoPage(params)
    }

    @Transactional
    def save(_DemoPage _DemoPageInstance) {
        if (_DemoPageInstance == null) {
            notFound()
            return
        }

        if (_DemoPageInstance.hasErrors()) {
            respond _DemoPageInstance.errors, view:'create'
            return
        }

        _DemoPageInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: '_DemoPageInstance.label', default: '_DemoPage'), _DemoPageInstance.id])
                redirect _DemoPageInstance
            }
            '*' { respond _DemoPageInstance, [status: CREATED] }
        }
    }

    def edit(_DemoPage _DemoPageInstance) {
        respond _DemoPageInstance
    }

    @Transactional
    def update(_DemoPage _DemoPageInstance) {
        if (_DemoPageInstance == null) {
            notFound()
            return
        }

        if (_DemoPageInstance.hasErrors()) {
            respond _DemoPageInstance.errors, view:'edit'
            return
        }

        _DemoPageInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: '_DemoPage.label', default: '_DemoPage'), _DemoPageInstance.id])
                redirect _DemoPageInstance
            }
            '*'{ respond _DemoPageInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(_DemoPage _DemoPageInstance) {

        if (_DemoPageInstance == null) {
            notFound()
            return
        }

        _DemoPageInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: '_DemoPage.label', default: '_DemoPage'), _DemoPageInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: '_DemoPageInstance.label', default: '_DemoPage'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
