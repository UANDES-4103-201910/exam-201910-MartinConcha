class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :city
      t.string :country
      t.integer :zip
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
