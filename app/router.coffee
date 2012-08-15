User = require 'models/user'
AppView = require 'views/app_view'
controller = require 'controllers/controller'
app = require 'application'

module.exports = class Router extends Backbone.Router
  routes:
    '': 'home'
  initialize: ->
    app.view = new AppView( {el: $('body')} )
    Backbone.history.start()
  home: ->