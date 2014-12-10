class TaskAssignment < ActiveRecord::Base
  attr_accessible :task_id, :created_at, :user_assigned_id, :date_assigned
  
  # Relationships
  belongs_to :task
  has_one :task_response
  belongs_to :user, foreign_key: "user_assigned_id"
  
  # Validations
  validates_presence_of :task_id, :user_assigned_id
  
  # Scopes

end
