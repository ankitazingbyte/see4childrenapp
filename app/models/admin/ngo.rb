class Admin::Ngo < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :children
	has_many :events
	has_many :profiles
end
