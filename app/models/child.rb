class Child < ApplicationRecord
	# mount_uploader :video, VideoUploader
	mount_uploader :image, ImageUploader
	belongs_to :ngo, optional: true
end
