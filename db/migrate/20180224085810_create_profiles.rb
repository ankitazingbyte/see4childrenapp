class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :no_of_children
      t.string :no_of_staff
      t.string :state
      t.string :established
      t.string :city
      t.string :area
      t.string :zip_code
      t.string :director
      t.string :image
      
      t.timestamps
    end
  end
end
