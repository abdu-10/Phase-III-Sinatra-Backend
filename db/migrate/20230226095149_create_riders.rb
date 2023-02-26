class CreateRiders < ActiveRecord::Migration[6.1]
  def change
    create_table :riders do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :avatar
      t.string :email
      t.string :phone_number
      t.integer :id_number
      t.string :license_number
      t.string :spouse_contact

      t.timestamps
    end
  end
end
