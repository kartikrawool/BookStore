class AddFieldsToCreditcard < ActiveRecord::Migration[7.0]
  def change
    add_column :creditcards, :cvv, :string
    add_column :creditcards, :expiry, :text
  end
end
