Scrumly.Views.Stories ||= {}

class Scrumly.Views.Stories.StoryView extends Backbone.View
  template: JST["backbone/templates/stories/story"]

  events:
    "click .destroy" : "destroy"

  tagName: "li"
  className: 'story'

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).attr('id', "story_#{@model.id}").html(@template(@model.toJSON() ))
    return this
