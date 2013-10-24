NewTodoViewView = require 'views/new_todo_view'

describe 'NewTodoViewView', ->
    beforeEach ->
        @view = new NewTodoViewView()

    it 'should exist', ->
        expect(@view).to.be.ok
