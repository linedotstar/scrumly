class Project < ActiveRecord::Base
  attr_accessible :title

  has_many :sprints
  has_many :stories

  def estimate
    stories.map(&:estimate).sum
  end
end
