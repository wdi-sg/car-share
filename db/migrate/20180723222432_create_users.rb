class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.references :name
      t.references :email
      t.references :password

    end
  end
end
