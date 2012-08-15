View = require './view'
template = require './templates/app'
app = require 'application'

module.exports = class AppView extends View
  template: template

  initialize: ->
  	@render()
  	super()
  	@

  getRenderData: ->
  	return { title: app.config.title }