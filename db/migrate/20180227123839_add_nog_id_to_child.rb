class AddNogIdToChild < ActiveRecord::Migration[5.1]
  def change
    add_column :children, :admin_ngo_id, :integer
  end
end
