class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.string :number
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
