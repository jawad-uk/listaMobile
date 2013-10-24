TodoModel = require 'models/Todo'

describe 'TodoModel', ->
    beforeEach ->
        @model = new TodoModel()

    it 'should exist', ->
        expect(@model).to.be.ok
