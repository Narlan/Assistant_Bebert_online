class AddNeedToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :need, :integer
  end
end
