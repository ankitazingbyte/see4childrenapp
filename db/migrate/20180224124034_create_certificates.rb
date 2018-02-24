class CreateCertificates < ActiveRecord::Migration[5.1]
  def change
    create_table :certificates do |t|
      t.string :donar_name
      t.string :donation_amount
      t.string :sponsored_child_code
      t.string :sponsored_child_name
      t.string :month
      t.date :issue_date

      t.timestamps
    end
  end
end
