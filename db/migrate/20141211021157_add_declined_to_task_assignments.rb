class AddDeclinedToTaskAssignments < ActiveRecord::Migration
  def change
    add_column :task_assignments, :declined, :boolean
    add_column :task_assignments, :declined_reason, :text
  end
end
