class Event < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :event, optional: true
end
