class Scrumly.Models.Project extends Backbone.Model
  paramRoot: 'project'

  defaults:
    title: null

class Scrumly.Collections.ProjectsCollection extends Backbone.Collection
  model: Scrumly.Models.Project
  url: '/projects'
