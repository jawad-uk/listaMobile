module.exports = class TodosCollection extends Backbone.Collection
    model: require 'models/Todo'

    initialize: -> 
		@localStorage = new Store 'todos'

	done: ->
		@filter (todo) -> 
			todo.get 'done'

	remaining: -> 
		@without.apply this, @done()

	nextOrder: -> 
		return 1 unless @length
		@last().get('order') + 1

	comparator: (todo) -> 
		todo.get 'order'

	clearCompleted: -> 
		_.each @done(), (todo) -> todo.clear()