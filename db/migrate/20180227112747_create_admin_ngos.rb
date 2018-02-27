class CreateAdminNgos < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_ngos do |t|
      t.string :name
      t.string :no_of_children
      t.string :address

      t.timestamps
    end
  end
end
