class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :child_name
      t.string :ngo_name
      t.integer :child_age
      t.string :spend_money
      t.string :month
      t.string :date_of
      t.string :issue
      t.integer :notification_id

      t.timestamps
    end
  end
end
