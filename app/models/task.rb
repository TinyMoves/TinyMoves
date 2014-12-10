class Task < ActiveRecord::Base
  attr_accessible :title, :created_at, :description, :user_id, :active 
  
  # Relationships
  has_one :task_assignment
  has_one :task_response, :through => :task_assignment
  belongs_to :user
  
  # Validations
  validates_presence_of :title, :user_id, :active
  
  # Scopes
  scope :alphabetical, order('tasks.title')
  scope :chronological, order('tasks.created_at')
  scope :completed, where('task_responses.date_completed IS NOT NULL', true)
  scope :incomplete, where('task_responses.date_completed IS NULL', true)
  scope :pool, where('pool = ?', true)

  # Methods
  def is_complete?
    if self.task_assignments.task_responses.where('date_completed IS NOT NULL', task.id)
      return true
    end
  end

end
