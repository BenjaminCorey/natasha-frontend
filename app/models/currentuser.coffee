config = require 'config'

module.exports = class CurrentUser extends Backbone.Model
  url: config.api.versionRoot + "/me"
  parse: (response) ->
  	@meta = response.meta || {}
  	return response.objects[0]

  initialize: ->
  	@fetch {dataType: 'jsonp'}
  	@on 'all', ->
  		console.log @