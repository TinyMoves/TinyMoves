class Friend < ActiveRecord::Base
	attr_accessible :user_id, :friend_id, :created_at

	# Relationships
	belongs_to :user
	has_many :friends, class_name: "User", foreign_key: "friend_id"

	# Validations
	validates_presence_of :user_id, :friend_id

  # Scopes

end
