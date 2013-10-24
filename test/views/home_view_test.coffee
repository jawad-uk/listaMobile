HomeViewView = require 'views/home_view'

describe 'HomeViewView', ->
    beforeEach ->
        @view = new HomeViewView()

    it 'should exist', ->
        expect(@view).to.be.ok
