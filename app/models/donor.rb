class Donor < ApplicationRecord
	mount_uploader :image, ImageUploader
end
