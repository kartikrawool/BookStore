class AddFeildToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :phonenumber, :string
    add_column :users, :name, :string
    add_column :users, :address, :text
  end
end
