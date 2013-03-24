class AddEstimateToStories < ActiveRecord::Migration
  def change
    change_table :stories do |t|
      t.integer :estimate
    end
  end
end
