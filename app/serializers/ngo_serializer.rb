class NgoSerializer < ActiveModel::Serializer
	# include Rails.application.routes.url_helpers
  attributes :id, :name, :email, :state, :city, :zip_code, :address, :director, :no_of_children, :total_staff, :establish, :area
  # def links
  #   {
  #     self: api_v1_ngo_path(object.id)
  #   }
  # end
end
