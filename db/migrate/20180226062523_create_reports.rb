class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :child_name
      t.string :child_code
      t.integer :donor_id
      t.string :donation_month
      t.date :date
      t.string :paid
      t.string :sent_by

      t.timestamps
    end
  end
end
