class User < ActiveRecord::Base
	has_secure_password
    has_many :rides
	has_many :attractions, through: :rides

	after_initialize do |user|
     user.update(:admin => false)
    end

	def mood
	  if self.nausea && self.happiness
		if self.nausea > self.happiness
			return 'sad'
		elsif self.nausea < self.happiness
			return 'happy'
		end
	  end
	end
end
