Scrumly.Views.Stories ||= {}

class Scrumly.Views.Stories.IndexView extends Backbone.View

  tagName: 'ul'
  className: 'stories'

  initialize: () ->
    @options.stories.bind('reset', @addAll)

  addAll: () =>
    @options.stories.each(@addOne)

  addOne: (story) =>
    view = new Scrumly.Views.Stories.StoryView({model : story})
    $(@el).append(view.render().el)

  render: =>
    @addAll()

    return this
