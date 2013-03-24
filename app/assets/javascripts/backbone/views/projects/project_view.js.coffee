Scrumly.Views.Projects ||= {}

class Scrumly.Views.Projects.ProjectView extends Backbone.View
  template: JST["backbone/templates/projects/project"]

  events:
    "click .destroy" : "destroy"

  tagName: "li"

  className: "project row"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
