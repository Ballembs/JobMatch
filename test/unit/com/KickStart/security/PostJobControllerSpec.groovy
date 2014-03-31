package com.KickStart.security



import grails.test.mixin.*
import spock.lang.*

@TestFor(PostJobController)
@Mock(PostJob)
class PostJobControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.postJobInstanceList
            model.postJobInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.postJobInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def postJob = new PostJob()
            postJob.validate()
            controller.save(postJob)

        then:"The create view is rendered again with the correct model"
            model.postJobInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            postJob = new PostJob(params)

            controller.save(postJob)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/postJob/show/1'
            controller.flash.message != null
            PostJob.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def postJob = new PostJob(params)
            controller.show(postJob)

        then:"A model is populated containing the domain instance"
            model.postJobInstance == postJob
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def postJob = new PostJob(params)
            controller.edit(postJob)

        then:"A model is populated containing the domain instance"
            model.postJobInstance == postJob
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/postJob/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def postJob = new PostJob()
            postJob.validate()
            controller.update(postJob)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.postJobInstance == postJob

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            postJob = new PostJob(params).save(flush: true)
            controller.update(postJob)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/postJob/show/$postJob.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/postJob/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def postJob = new PostJob(params).save(flush: true)

        then:"It exists"
            PostJob.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(postJob)

        then:"The instance is deleted"
            PostJob.count() == 0
            response.redirectedUrl == '/postJob/index'
            flash.message != null
    }
}
