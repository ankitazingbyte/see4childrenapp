class Child < ApplicationRecord
	# mount_uploader :video, VideoUploader
	mount_uploader :image, ImageUploader
end
