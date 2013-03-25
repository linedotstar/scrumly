Scrumly.Views.Projects ||= {}

class Scrumly.Views.Projects.EditView extends Backtastic.Views.FormView
  template : JST["backbone/templates/projects/edit"]

  events :
    "submit #edit-project" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (project) =>
        @model = project
        window.location.hash = "/projects/#{@model.id}"

      error: (project, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render : ->
    super

    this.$("form").backboneLink(@model)

    return this
