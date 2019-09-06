class CreateAlliance < ActiveRecord::Migration[5.1]
  def change
    create_table :alliances do |t|
      t.string :name
      t.integer :total_tdc
      t.integer :total_need
      t.integer :completion_delta
      t.timestamps
    end
  end
end
