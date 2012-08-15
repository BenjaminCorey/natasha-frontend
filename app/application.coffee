class AppLoader
  _app = undefined
  @get: (args) ->
    _app ?= new Application args

class Application
  config: require 'config'
  events: _.clone(Backbone.Events)

  constructor: (@args) ->
    # Instantiate the router

  init: ->
    Router = require 'router'
    @router = new Router()

module.exports =  AppLoader.get()
