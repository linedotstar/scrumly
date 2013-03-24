class Project < ActiveRecord::Base
  attr_accessible :title

  has_many :sprints
  has_many :stories
end
