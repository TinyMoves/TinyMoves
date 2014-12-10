class CreateTaskAssignments < ActiveRecord::Migration
  def change
    create_table :task_assignments do |t|
      t.integer :task_id
      t.integer :user_assigned_id
      t.date :date_assigned

      t.timestamps
    end
  end
end
