Scrumly.Views.Stories ||= {}

class Scrumly.Views.Stories.EditView extends Backtastic.Views.FormView
  template : JST["backbone/templates/stories/edit"]

  events :
    "submit #edit-story" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (project) =>
        @model = project
        window.location.hash = "/stories/#{@model.id}"

      error: (project, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render : ->
    super

    this.$("form").backboneLink(@model)

    return this
