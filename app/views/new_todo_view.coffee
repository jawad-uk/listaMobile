module.exports = class NewTodoViewView extends Backbone.View
	className: 'new_todo_view'
	template: require './templates/new_todo'
	id: 'new-todo-view'
	events:
		'keypress #new-todo': 'createOnEnter'
		'click #new-todo-submit': 'createOnClick'
		'focusin #new-todo': 'showButton'
		'focusout #new-todo': 'hideButton'

	newAttributes: ->
		attributes =
			order: application.todos.nextOrder()
		attributes.content = @$('#new-todo').val() if @$('#new-todo').val()
		attributes

	createOnEnter: (event) ->
		return unless event.keyCode is 13
		application.todos.create @newAttributes()
		@$('#new-todo').val ''

	createOnClick: (event) -> 
		console.log('registered click on new todo button')
		application.todos.create @newAttributes()
		$('#new-todo').val ''

	showButton: ->
		button = @$('#new-todo-submit')
		button.addClass 'display'
		$('#new-todo').focus()

	hideButton: -> 
		button = $('#new-todo-submit')
		button.removeClass 'display'