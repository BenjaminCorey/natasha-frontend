User = require 'models/user'
AppView = require 'views/app_view'
app = require 'application'
BannerView = require 'views/banner_view'

module.exports = class Router extends Backbone.Router
  routes:
    '': 'home'
  initialize: ->
    app.view = new AppView( {el: $('body')} )
    app.user = new User()
    Backbone.history.start()
  home: ->
  	console.log 'home route triggered'
  	app.banner = new BannerView {el: $ '#banner'}