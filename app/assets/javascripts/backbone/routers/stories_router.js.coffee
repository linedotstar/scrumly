class Scrumly.Routers.StoriesRouter extends Backbone.Router
  initialize: (options) ->
    @stories = new Scrumly.Collections.StoriesCollection()
    @stories.reset options.stories

  routes:
    "stories/new"      : "newStory"
    "stories/:id/edit" : "edit"
    "stories/:id"      : "show"

  newStory: ->
    @view = new Scrumly.Views.Stories.NewView(collection: @stories)
    $("#story_#{id}").html(@view.render().el)

  show: (id) ->
    story = @stories.get(id)

    @view = new Scrumly.Views.Stories.ShowView(model: story)
    $("#story_#{id}").html(@view.render().el)

  edit: (id) ->
    story = @stories.get(id)

    @view = new Scrumly.Views.Stories.EditView(model: story)
    $("#story_#{id}").html(@view.render().el)
