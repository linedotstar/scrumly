class Scrumly.Routers.ProjectsRouter extends Backbone.Router
  initialize: (options) ->
    @projects = new Scrumly.Collections.ProjectsCollection()
    @projects.reset options.projects

  routes:
    "projects/new"      : "newProject"
    "projects/index"    : "index"
    "projects/:id/edit" : "edit"
    "projects/:id"      : "show"
    "projects/.*"       : "index"

  newProject: ->
    @view = new Scrumly.Views.Projects.NewView(collection: @projects)
    $("#canvas").html(@view.render().el)

  index: ->
    @view = new Scrumly.Views.Projects.IndexView(projects: @projects)
    $("#canvas").html(@view.render().el)

  show: (id) ->
    project = @projects.get(id)

    @view = new Scrumly.Views.Projects.ShowView(model: project)
    $("#canvas").html(@view.render().el)

    project.stories().fetch success: (stories) ->
      stories_view = new Scrumly.Views.Stories.IndexView(stories: stories)
      @$('#backlog').html(stories_view.render().el)

  edit: (id) ->
    project = @projects.get(id)

    @view = new Scrumly.Views.Projects.EditView(model: project)
    $("#canvas").html(@view.render().el)
