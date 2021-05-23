class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :urlpictures
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.integer :price
      t.timestamps null: false

    end
  end
end
