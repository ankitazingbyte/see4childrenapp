class User < ApplicationRecord
	  #mount_uploader :image, ImageUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
	has_many :messages
	has_many :conversations, foreign_key: :sender_id
	# after_create :create_profile
	has_one :profile

end
