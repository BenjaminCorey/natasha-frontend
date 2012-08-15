# Base class for all views.
module.exports = class View extends Backbone.View
  initialize: ->
    @model?.on       'add change', @render
    @collection?.on  'add change', @render

    @model?.on       'destroy remove', @close
    @collection?.on  'destroy remove', @close

    @render()

  template: ->
    return

  getRenderData: ->
    return

  render: =>
    console.debug "Rendering #{@constructor.name}"
    @$el.html @template @getRenderData()
    @afterRender()
    this

  afterRender: ->
    return

  close: ->
    @beforeClose?()
    @remove()
    @onClose?()
    @trigger 'close'
    @unbind()