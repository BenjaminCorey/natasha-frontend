config = require 'config'
Model  = require './model'

module.exports = class CurrentUser extends Model
  url: config.api.versionRoot + "/me"
  parse: (response) ->
  	@meta = response.meta || {}
  	return response.objects[0]

  initialize: ->
  	@fetch {dataType: 'jsonp'}
  	@on 'all', ->
  		console.log @