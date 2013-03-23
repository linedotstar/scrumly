class Story < ActiveRecord::Base
  attr_accessible :title, :description, :project_id
  belongs_to :project
end
