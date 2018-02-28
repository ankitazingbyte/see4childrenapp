class Admin::Report < ApplicationRecord
	belongs_to :notification, optional: true
end
