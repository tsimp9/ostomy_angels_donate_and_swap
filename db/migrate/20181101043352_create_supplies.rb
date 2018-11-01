class CreateSupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :supplies do |t|
      t.string :category
      t.string :subcategory
      t.string :brand
      t.string :product_id
      t.string :description

      t.timestamps
    end
  end
end
