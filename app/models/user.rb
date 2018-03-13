class User < ApplicationRecord
rolify 
	#mount_uploader :image, ImageUploader
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
  	 devise :database_authenticatable, :registerable, 
  	       :recoverable, :rememberable, :trackable, :validatable
	has_many :messages
	has_many :conversations, foreign_key: :sender_id
	# after_create :create_profile
	has_one :profile, dependent: :destroy
	
	# Get admin role 
	def admin
		return self.has_role? :admin
	end
	
	# Get donor role 
	def donor
		return self.has_role? :donor
	end
	
	# Get ngo role 
	def ngo
		return self.has_role? :ngo
	end

	# attr_accessor :password
	# before_save :encrypt_password
	# after_create :encrypt_password
	# validates_uniqueness_of :email
	# before_create :set_auth_token

	# def self.authenticate(email, password)
	# 	user = find_by_email(email)
	# 	if user && user.password_digest == BCrypt::Engine.hash_secret(password, user.password_salt)
	# 	  user
	# 	else
	# 	  nil
	# 	end
	# end

	# def encrypt_password
	# 	if password.present?
	# 		self.password_salt = BCrypt::Engine.generate_salt
	# 		self.password_digest = BCrypt::Engine.hash_secret(password, password_salt)
	# 	end
	# end

	# def generate_auth_token
	# 	SecureRandom.uuid.gsub(/\-/,'')
	# end

	# def generate_password_token!
	#   self.reset_password_token = generate_token
	#   self.reset_password_sent_at = Time.now.utc
	#   save!
	# end

	# def password_token_valid?
	#   (self.reset_password_sent_at + 4.hours) > Time.now.utc
	# end

	# def reset_password!(password)
	#   self.reset_password_token = nil
	#   self.password = password
	#   save!
	# end
	# def update_new_email!(email)
	#   self.unconfirmed_email = email
	#   self.generate_confirmation_instructions
	#   save
	# end

	# def self.email_used?(email)
	#   existing_user = find_by("email = ?", email)

	#   if existing_user.present?
	#     return true
	#   else
	#     waiting_for_confirmation = find_by("unconfirmed_email = ?", email)
	#     return waiting_for_confirmation.present? && waiting_for_confirmation.confirmation_token_valid?
	#   end
	# end
	
	# def update_new_email!
	#   self.email = self.unconfirmed_email
	#   self.unconfirmed_email = nil
	#   self.mark_as_confirmed!
	# end

	# private

	# def generate_token
	#   SecureRandom.hex(10)
	# end

	# def set_auth_token
	# 	return if token.present?
	# 	self.token = generate_auth_token
	# end
end
