class CreateShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_addresses do |t|
      t.string :name
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
