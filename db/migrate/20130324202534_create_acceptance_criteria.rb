class CreateAcceptanceCriteria < ActiveRecord::Migration
  def change
    create_table :acceptance_criteria do |t|
      t.string :title
      t.belongs_to :story
      t.datetime :completed_at

      t.timestamps
    end
  end
end
