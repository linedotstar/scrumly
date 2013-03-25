Scrumly.Models.Story.has().one 'project',
  model: Scrumly.Models.Project
  inverse: 'stories'

Scrumly.Models.Project.has().many 'stories',
  collection: Scrumly.Collections.StoriesCollection.extend
    url: ->
      "/projects/#{@owner.id}/stories"
  inverse: 'project'
