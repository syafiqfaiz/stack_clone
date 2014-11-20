class User < ActiveRecord::Base
	has_secure_password
	has_many :posts

	# attr_accessible :email, :password, :password_confirmation
	validates_uniqueness_of :email
end
