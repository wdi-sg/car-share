class CreateCarsSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :cars_spaces do |t|
      t.references :car
      t.references :space
    end
  end
end
