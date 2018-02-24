json.extract! donor, :id, :name, :child_code, :send_by, :donor_code, :donar_paid, :last_paid, :reference, :month, :created_at, :updated_at
json.url donor_url(donor, format: :json)
