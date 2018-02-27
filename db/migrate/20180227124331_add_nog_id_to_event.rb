class AddNogIdToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :admin_ngo_id, :integer
  end
end
