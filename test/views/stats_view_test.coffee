StatsViewView = require 'views/stats_view'

describe 'StatsViewView', ->
    beforeEach ->
        @view = new StatsViewView()

    it 'should exist', ->
        expect(@view).to.be.ok
