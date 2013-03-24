class Sprint < ActiveRecord::Base
  attr_accessible :end_at, :start_at, :title, :project_id

  belongs_to :project
  has_many :stories

  def estimate
    stories.map(&:estimate).sum
  end

end
