module.exports = class StatsViewView extends Backbone.View
    className: 'stats_view'
	template: require './templates/stats'
	id: 'stats-view'
	events:
		'click .todo-clear' : 'clearCompleted'

	getRenderData: ->
		{
			stats:
				total: application.todos.length
				done: application.todos.done().length
				remaining: application.todos.remaining().length
		}

	clearCompleted: ->
		application.todos.clearCompleted()