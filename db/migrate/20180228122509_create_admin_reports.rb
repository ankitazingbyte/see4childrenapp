class CreateAdminReports < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_reports do |t|
      t.string :child_name
      t.string :child_code
      t.integer :donor_id
      t.string :donation_month
      t.date :date
      t.string :paid
      t.string :sent_by
      t.integer :ngo_id
      t.integer :notification_id

      t.timestamps
    end
  end
end
