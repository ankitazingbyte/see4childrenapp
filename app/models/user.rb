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
	has_one :profile
	
	# Get admin role 
	def admin
		return self.has_role? :admin
	end
	
	# Get donor role 
	# def donor
	# 	return self.has_role? :donor
	# end
	
	# Get ngo role 
	def ngo
		return self.has_role? :ngo
	end
end
