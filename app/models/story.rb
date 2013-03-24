class Story < ActiveRecord::Base
  attr_accessible :title, :description, :project_id
  acts_as_commentable

  accepts_nested_attributes_for :comments

  belongs_to :project
end
