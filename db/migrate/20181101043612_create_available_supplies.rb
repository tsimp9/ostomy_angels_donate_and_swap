class CreateAvailableSupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :available_supplies do |t|
      t.integer :user_id
      t.integer :supply_id
      t.integer :quantity_available

      t.timestamps
    end
  end
end
