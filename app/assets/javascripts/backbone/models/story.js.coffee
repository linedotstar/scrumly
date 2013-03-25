class Scrumly.Models.Story extends Supermodel.Model
  paramRoot: 'story'

  defaults:
    id: null
    title: null

class Scrumly.Collections.StoriesCollection extends Backbone.Collection
  model: (attrs, options) ->
    return Scrumly.Models.Story.create(attrs, options)

  url: '/stories'
