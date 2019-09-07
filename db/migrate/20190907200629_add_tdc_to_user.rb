class AddTdcToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :tdc, :integer
  end
end
