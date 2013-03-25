Scrumly.Views.Projects ||= {}

class Scrumly.Views.Projects.IndexView extends Backbone.View
  template: JST["backbone/templates/projects/index"]

  tagName: 'ul'
  className: 'projects'

  initialize: () ->
    @options.projects.bind('reset', @addAll)

  addAll: () =>
    @options.projects.each(@addOne)

  addOne: (project) =>
    view = new Scrumly.Views.Projects.ProjectView({model : project})
    $(@el).append(view.render().el)

  render: =>
    @addAll()

    $(@el).append(@template() )

    return this
