class CreateAdditionalAddressInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :additional_address_informations do |t|
      t.string :number
      t.string :complement

      t.timestamps
    end
  end
end
