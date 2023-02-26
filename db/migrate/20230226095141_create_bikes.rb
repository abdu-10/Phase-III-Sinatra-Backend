class CreateBikes < ActiveRecord::Migration[6.1]
  def change
    create_table :bikes do |t|
      t.string :model
      t.string :reg_number
      t.string :cc
      t.string :price
      t.boolean :booked
      # t.belongs_to :owner, null: false, foreign_key: true
      # t.belongs_to :rider, null: false, foreign_key: true
      t.integer :owner_id
      t.integer :rider_id
      # t.references :rider, null: false, foreign_key: true

      t.timestamps
    end
  end
end
