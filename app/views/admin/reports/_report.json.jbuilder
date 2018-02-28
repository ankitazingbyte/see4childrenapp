json.extract! admin_report, :id, :name, :children, :address, :created_at, :updated_at
json.url admin_report_url(admin_report, format: :json)