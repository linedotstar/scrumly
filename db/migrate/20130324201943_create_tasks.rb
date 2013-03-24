class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.belongs_to :story
      t.integer :estimate
      t.datetime :completed_at

      t.timestamps
    end
  end
end
