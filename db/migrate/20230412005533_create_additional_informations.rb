class CreateAdditionalInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :additional_informations do |t|
      t.text :information
      t.references :faithful, null: false, foreign_key: true

      t.timestamps
    end
  end
end
