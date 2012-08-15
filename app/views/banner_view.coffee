View = require './view'
template = require './templates/banner'
app = require 'application'
module.exports = class BannerView extends View
  className: 'container'
  template: template
  initialize: ->
  	app.user.on 'change', @render

  getRenderData: ->
  	data = app.user.toJSON()
  	console.log data
  	data