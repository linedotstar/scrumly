class Scrumly.Models.Project extends Supermodel.Model
  paramRoot: 'project'

  defaults:
    id: null
    title: null

class Scrumly.Collections.ProjectsCollection extends Backbone.Collection
  model: (attrs, options) ->
    return Scrumly.Models.Project.create(attrs, options)

  url: '/projects'
