class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.text :brand
      t.text :plate_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
