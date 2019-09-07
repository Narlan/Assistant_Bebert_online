class AddCollumnInAlliance < ActiveRecord::Migration[5.1]
  def change
    add_column :alliances, :name, :string
    add_column :alliances, :created_at, :datetime, null: false
    add_column :alliances, :updated_at, :datetime, null: false
  end
end
