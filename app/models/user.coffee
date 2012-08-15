config = require 'config'
Model = require './model'

module.exports = class User extends Model
  url: config.api.versionRoot + "/me"
  parse: (response) ->
  	@meta = response.meta || {}
  	return response.objects[0]
  defaults:
  	first_name : ""
  	last_name  : ""
  	username   : ""
  	fbid       : ""
  	
  initialize: ->
  	app.events.trigger 'user:loading'
  	@fetch {dataType: 'jsonp'}
  	@on 'fetch change', ->
  		console.log @
  		app.events.trigger 'user:loaded'