class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :avatar
      t.string :email
      t.integer :phone_number

      t.timestamps
    end
  end
end
