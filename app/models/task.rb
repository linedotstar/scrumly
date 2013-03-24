class Task < ActiveRecord::Base
  attr_accessible :completed_at, :estimate, :story_id, :title

  belongs_to :story
end
