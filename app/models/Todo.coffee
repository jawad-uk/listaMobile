module.exports = class TodoModel extends Backbone.Model

	defaults: 
		content: 'مافيه شيء'
		done: no
		list: 'inbox'

	toggle: -> 
		@save done: not @get 'done'

	clear: -> 
		@destroy()
		@view.remove()
