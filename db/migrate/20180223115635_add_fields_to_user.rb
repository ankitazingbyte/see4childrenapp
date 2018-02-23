class AddFieldsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :no_of_children, :string
    add_column :users, :no_of_staff, :string
    add_column :users, :state, :string
    add_column :users, :established, :string
    add_column :users, :city, :string
    add_column :users, :area, :string
    add_column :users, :zip_code, :string
    add_column :users, :director, :string
    add_column :users, :image, :string
  end
end
