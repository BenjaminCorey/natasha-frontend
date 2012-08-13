application = require 'application'
CurrentUser = require 'models/currentuser'
module.exports = class Router extends Backbone.Router
  routes:
    '': 'home'
  initialize: ->
  	@currentUser = new CurrentUser()
  home: ->
    $('body').html app.get().homeView.render().el