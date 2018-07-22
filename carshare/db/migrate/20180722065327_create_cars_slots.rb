class CreateCarsSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :cars_slots do |t|
      t.references :car, foreign_key: true
      t.references :slot, foreign_key: true

      t.timestamps
    end
  end
end
