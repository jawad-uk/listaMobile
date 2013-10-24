TodosViewView = require 'views/todos_view'

describe 'TodosViewView', ->
    beforeEach ->
        @view = new TodosViewView()

    it 'should exist', ->
        expect(@view).to.be.ok
