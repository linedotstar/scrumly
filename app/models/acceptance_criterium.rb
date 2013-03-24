class AcceptanceCriterium < ActiveRecord::Base
  attr_accessible :completed_at, :story_id, :title

  belongs_to :story
end
