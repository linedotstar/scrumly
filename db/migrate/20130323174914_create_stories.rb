class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.belongs_to :project
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
