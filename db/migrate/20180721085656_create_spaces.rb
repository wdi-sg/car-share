class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.text :slot

      t.timestamps
    end
  end
end
