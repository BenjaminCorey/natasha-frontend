Application = require 'application'

$ ->
  window.app = new Application()
  Backbone.history.start()
