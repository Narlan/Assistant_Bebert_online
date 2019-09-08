class ChangingIntIntoBigint < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :tdc, :bigint
    change_column :users, :need, :bigint
  end
end
