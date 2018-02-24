class CreateDonors < ActiveRecord::Migration[5.1]
  def change
    create_table :donors do |t|
      t.string :name
      t.string :child_code
      t.string :send_by
      t.string :donor_code
      t.integer :donar_paid
      t.string :last_paid
      t.string :reference
      t.string :month
      t.string :image

      t.timestamps
    end
  end
end
