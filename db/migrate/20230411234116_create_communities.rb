class CreateCommunities < ActiveRecord::Migration[7.0]
  def change
    create_table :communities do |t|
      t.string :name
      t.string :phone_number
      t.string :church_number
      t.references :state, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :neighborhood, null: false, foreign_key: true
      t.references :street, null: false, foreign_key: true

      t.timestamps
    end
  end
end
