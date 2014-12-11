class Task < ActiveRecord::Base
  
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

end
