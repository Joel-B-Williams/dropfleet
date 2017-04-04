class User < ApplicationRecord

	has_many :fleets
	has_many :battlegroups, through: :fleets
	has_many :groups, through: :battlegroups
	# has_many :ships, through: :groups

	has_secure_password
	
	validates :username, presence: true, length: { maximum: 50 }
	validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
	# validates_confirmation_of :password

	class << self
 		# set digest cost based on env (prod vs test)
 		def digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end
	end

	def authenticated?(password)
		!!self.authenticate(password) 
	end

end
