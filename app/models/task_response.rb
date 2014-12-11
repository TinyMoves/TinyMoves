class TaskResponse < ActiveRecord::Base
  
  # Relationships
  belongs_to :task_assignment
  
  # Validations
  validates_presence_of :task_assignment_id, :date_completed, :image
  
  # Scopes
  scope :newest_first, order('date_completed DESC')

  # should be scope of where task_response declined is null and the associated task_assignment is from their created tasks
  def self.moves_to_approve(user_id)
  	user = User.find_by_id(user_id)
  	moves = []
  	user.tasks.each do |task|
  		response = task.task_assignment.task_response.where('declined IS NULL')
  		moves.push(response)
  	end
  	moves.flatten
  end

end
