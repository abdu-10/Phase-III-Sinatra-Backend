class AddPasswordToRiders < ActiveRecord::Migration[6.1]
  def change
    add_column :riders, :password, :string
  end
end
