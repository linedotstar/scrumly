class Comment < ActiveRecord::Base
  attr_accessible :body, :story_id, :user_id

  belongs_to :story
  belongs_to :user
end
