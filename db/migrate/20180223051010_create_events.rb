class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_type
      t.string :description
      t.string :image
      t.string :address
      t.string :organizer

      t.timestamps
    end
  end
end
