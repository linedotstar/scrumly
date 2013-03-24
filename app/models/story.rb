class Story < ActiveRecord::Base
  attr_accessible :title, :description, :project_id, :sprint_id
  belongs_to :project
  belongs_to :sprint
end
