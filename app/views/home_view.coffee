View = require './view'
template = require './templates/home'
app = require 'application'

module.exports = class HomeView extends View
  id: 'home-view'
  template: template
  getRenderData: ->
  	return { title: app.config.title }
