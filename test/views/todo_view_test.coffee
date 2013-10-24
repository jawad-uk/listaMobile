TodoViewView = require 'views/todo_view'

describe 'TodoViewView', ->
    beforeEach ->
        @view = new TodoViewView()

    it 'should exist', ->
        expect(@view).to.be.ok
