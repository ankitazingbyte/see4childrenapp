json.extract! profile, :id, :name, :no_of_children, :no_of_staff, :state, :established, :city, :area, :zip_code, :director, :image, :created_at, :updated_at
json.url profile_url(profile, format: :json)
