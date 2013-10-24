TodosCollection = require 'collections/Todos'

describe 'TodosCollection', ->
    beforeEach ->
        @collection = new TodosCollection()

    it 'should exist', ->
        expect(@collection).to.be.ok
