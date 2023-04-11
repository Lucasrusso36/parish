class CreateStreets < ActiveRecord::Migration[7.0]
  def change
    create_table :streets do |t|
      t.string :name
      t.references :state, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :neighborhood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
