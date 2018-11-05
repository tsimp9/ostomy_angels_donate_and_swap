class AddProductNameToSupply < ActiveRecord::Migration[5.2]
  def change
    add_column :supplies, :product_name, :string
  end
end
