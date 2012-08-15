# Loads / instantiates the application
window.app = require 'application'

# Initializes the app once the DOM is ready
$ ->
  window.app.init()