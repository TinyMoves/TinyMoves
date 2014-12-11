class TaskAssignment < ActiveRecord::Base
  
  # Relationships
  belongs_to :task
  has_one :task_response
  belongs_to :user, foreign_key: "user_assigned_id"
  
  # Validations
  validates_presence_of :task_id, :user_assigned_id, :date_assigned, :image
  
  # Scopes

  # Methods

  # where task_assignment assigned_to_id = theirs and there is no task_response with that task_assignment_id
  def self.moves_to_make(user_id)
  	assigned_moves = TaskAssignment.joins(:task_response).where('user_assigned_id = ? AND task_responses.task_assignment_id IS NULL', user_id)
  end

  def self.moves_to_accept(user_id)
  	pending = TaskAssignment.where('user_assigned_id = ? AND declined IS NULL', user_id)
  end
end
