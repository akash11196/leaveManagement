class User < ApplicationRecord
	before_save { email.downcase! }
	#belongs_to :leave
	has_many :leaves
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name,presence: true,length: {maximum:50}
	validates :email,presence:true,length: {maximum:50},format: { with: VALID_EMAIL_REGEX },uniqueness: { case_sensitive: false }
	has_secure_password



end
