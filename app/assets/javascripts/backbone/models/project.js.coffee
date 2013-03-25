class Scrumly.Models.Project extends Supermodel.Model
  paramRoot: 'project'

  defaults:
    id: null
    title: null

  # TODO figure out why backbone/supermodel can't handle the empty response body that comes with a RESTful update
  #      or make this to a global extension of Supermodel.Model
  parse: (resp, xhr) ->
    if xhr.status isnt 204 || resp?
      super(resp, xhr)
    else
      {}


class Scrumly.Collections.ProjectsCollection extends Backbone.Collection
  model: (attrs, options) ->
    return Scrumly.Models.Project.create(attrs, options)

  url: '/projects'
