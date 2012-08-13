module.exports = class Application
  constructor: ->
    @get()
  _instance = undefined
  get: (args) ->
    _instance ?= new _Application args

class _Application extends Backbone.Router
  constructor: (@args) ->
    console.log 'Starting _Application'
    @config = require 'config'
    HomeView = require 'views/home_view'
    Router = require 'controllers/router'
    # Ideally, initialized classes should be kept in controllers & mediator.
    # If you're making big webapp, here's more sophisticated skeleton
    # https://github.com/paulmillr/brunch-with-chaplin
    @homeView = new HomeView()

    # Instantiate the router
    @router = new Router()
    # Freeze the object
    Object.freeze? this