class Scrumly.Routers.AppRouter extends Backbone.Router
  initialize: (options) ->
    @projectsRouter = new Scrumly.Routers.ProjectsRouter(options)

  routes:
    ".*"       : "index"

  index: ->
    @projectsRouter.index()
