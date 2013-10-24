module.exports = class HomeViewView extends Backbone.View
    className: 'home_view'
    template: './templates/home'
  	el: '#home-view'

	afterRender: ->
		$todo =  @$el.find('#app-wrapper')
		for viewName in ['newTodo', 'todos', 'stats']
			$todo.append application["#{viewName}View"].render().el