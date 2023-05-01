class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.references :state, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :neighborhood, null: false, foreign_key: true
      t.references :street, null: false, foreign_key: true
      t.references :faithful, null: false, foreign_key: true

      t.timestamps
    end
  end
end
