Scrumly.Views.Stories ||= {}

class Scrumly.Views.Stories.IndexView extends Backbone.View
  template: JST["backbone/templates/stories/index"]

  initialize: () ->
    @options.stories.bind('reset', @addAll)

  addAll: () =>
    @options.stories.each(@addOne)

  addOne: (story) =>
    view = new Scrumly.Views.Stories.StoryView({model : story})
    @$("#stories").append(view.render().el)

  render: =>
    $(@el).html(@template(stories: @options.stories.toJSON() ))
    @addAll()

    return this
