class CreateFaithfuls < ActiveRecord::Migration[7.0]
  def change
    create_table :faithfuls do |t|
      t.string :first_name
      t.string :last_name
      t.string :function
      t.string :phone_number
      t.date :date_of_birth
      t.date :wedding_date
      t.boolean :children
      t.string :house_number
      t.string :complement
      t.references :state, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :neighborhood, null: false, foreign_key: true
      t.references :street, null: false, foreign_key: true
      t.references :sexual_orientation, null: false, foreign_key: true
      t.references :community, null: false, foreign_key: true
      t.references :relationship, null: false, foreign_key: true

      t.timestamps
    end
  end
end
