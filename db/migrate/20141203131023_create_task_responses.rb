class CreateTaskResponses < ActiveRecord::Migration
  def change
    create_table :task_responses do |t|
      t.integer :task_assignment_id
      t.date :date_completed
      t.boolean :declined
      t.text :declined_reason
      t.string :image

      t.timestamps
    end
  end
end
