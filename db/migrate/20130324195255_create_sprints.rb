class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.string :title
      t.belongs_to :project
      t.date :start_at
      t.date :end_at

      t.timestamps
    end

    change_table :stories do |t|
      t.belongs_to :sprint
    end
  end
end
