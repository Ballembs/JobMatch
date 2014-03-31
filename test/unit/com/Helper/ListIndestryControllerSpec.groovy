package com.Helper



import grails.test.mixin.*
import spock.lang.*

@TestFor(ListIndestryController)
@Mock(ListIndestry)
class ListIndestryControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.listIndestryInstanceList
            model.listIndestryInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.listIndestryInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def listIndestry = new ListIndestry()
            listIndestry.validate()
            controller.save(listIndestry)

        then:"The create view is rendered again with the correct model"
            model.listIndestryInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            listIndestry = new ListIndestry(params)

            controller.save(listIndestry)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/listIndestry/show/1'
            controller.flash.message != null
            ListIndestry.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def listIndestry = new ListIndestry(params)
            controller.show(listIndestry)

        then:"A model is populated containing the domain instance"
            model.listIndestryInstance == listIndestry
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def listIndestry = new ListIndestry(params)
            controller.edit(listIndestry)

        then:"A model is populated containing the domain instance"
            model.listIndestryInstance == listIndestry
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/listIndestry/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def listIndestry = new ListIndestry()
            listIndestry.validate()
            controller.update(listIndestry)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.listIndestryInstance == listIndestry

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            listIndestry = new ListIndestry(params).save(flush: true)
            controller.update(listIndestry)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/listIndestry/show/$listIndestry.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/listIndestry/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def listIndestry = new ListIndestry(params).save(flush: true)

        then:"It exists"
            ListIndestry.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(listIndestry)

        then:"The instance is deleted"
            ListIndestry.count() == 0
            response.redirectedUrl == '/listIndestry/index'
            flash.message != null
    }
}
