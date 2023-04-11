class CreateNeighborhoods < ActiveRecord::Migration[7.0]
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.references :state, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
