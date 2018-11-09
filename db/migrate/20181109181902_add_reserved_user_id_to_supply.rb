class AddReservedUserIdToSupply < ActiveRecord::Migration[5.2]
  def change
    add_column :supplies, :reserved_user_id, :integer
  end
end
