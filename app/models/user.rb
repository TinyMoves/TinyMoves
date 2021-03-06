class User < ActiveRecord::Base
	
  has_many :tasks

  def self.from_omniauth(auth)
     where(provider: auth.provider, uid: auth.uid).first or create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def self.ranking
    unless User.all.tasks.task_assignments.task_responses.nil?
      User.all.tasks.task_assignments.task_responses.group('users.id').compact.count('task_responses.id')
    else
      0
    end
  end
end