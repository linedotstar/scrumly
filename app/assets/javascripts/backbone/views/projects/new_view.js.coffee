Scrumly.Views.Projects ||= {}

class Scrumly.Views.Projects.NewView extends Backtastic.Views.FormView
  template: JST["backbone/templates/projects/new"]

  events:
    "submit #new-project": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (project) =>
        @model = project
        window.location.hash = "/projects/#{@model.id}"

      error: (project, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    super

    @$("form").backboneLink(@model)

    @
