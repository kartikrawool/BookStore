class CreateCreditcards < ActiveRecord::Migration[7.0]
  def change
    create_table :creditcards do |t|
      t.text :number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
