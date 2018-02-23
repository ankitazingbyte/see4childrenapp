class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :name
      t.string :child_code
      t.string :gender
      t.string :image
      t.date :dob
      t.string :education
      t.string :school
      t.string :hobby
      t.string :video

      t.timestamps
    end
  end
end
