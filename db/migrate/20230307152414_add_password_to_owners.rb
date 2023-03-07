class AddPasswordToOwners < ActiveRecord::Migration[6.1]
  def change
    add_column :owners, :password, :string
  end
end
