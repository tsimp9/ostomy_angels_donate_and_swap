class AddUserIdToSupply < ActiveRecord::Migration[5.2]
  def change
    add_column :supplies, :user_id, :integer
  end
end
