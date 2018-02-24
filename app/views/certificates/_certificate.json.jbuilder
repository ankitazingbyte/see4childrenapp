json.extract! certificate, :id, :donar_name, :donation_amount, :sponsored_child_code, :sponsored_child_name, :month, :issue_date, :created_at, :updated_at
json.url certificate_url(certificate, format: :json)
