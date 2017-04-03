class User < ApplicationRecord

	has_secure_password
	
	validates :username, presence: true, length: { maximum: 50 }
	validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
	validates_confirmation_of :password
end
