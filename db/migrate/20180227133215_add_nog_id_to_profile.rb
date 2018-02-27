class AddNogIdToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :ngo_id, :integer
  end
end
