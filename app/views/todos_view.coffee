module.exports = class TodosViewView extends Backbone.View
    className: 'todos_view'
	TodoView = todo_view

	
	template: require './templates/todos'
	id: 'todos-view'

	addOne: (todo) =>
		view = new TodoView model: todo
		@$el.find('#todos').append view.render().el

	addAll: =>
		application.todos.each @addOne

	initialize: ->
		application.todos.bind 'add', @addOne
		application.todos.bind 'reset', @addAll
		application.todos.bind 'all', @renderStats

	renderStats: =>
		application.statsView.render()