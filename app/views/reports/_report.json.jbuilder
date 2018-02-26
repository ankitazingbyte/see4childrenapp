json.extract! report, :id, :child_name, :child_code, :donor_id, :donation_month, :date, :paid, :sent_by, :created_at, :updated_at
json.url report_url(report, format: :json)
