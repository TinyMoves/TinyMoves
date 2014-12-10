class TaskResponse < ActiveRecord::Base
  attr_accessible :task_assignment_id, :date_completed, :declined, :declined_reason, :image, :created_at
  
  # Relationships
  belongs_to :task_assignment
  belongs_to :task. :through => :task_assignment
  
  # Validations
  validates_presence_of :task_assignment_id, :date_completed, :declined, :image
  
  # Scopes

end
