class Profile < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :user, optional: true
	belongs_to :admin_ngo
end
