class AddColumnSexualOrientationToFaithfulsAndChangeColumnName < ActiveRecord::Migration[7.0]
  def self.up
    add_column :faithfuls, :sexual_orientation, :integer
    rename_column :faithfuls, :date_of_birth, :birthdate
  end


  def self.down
    remove_column :faithfuls, :sexual_orientation
    rename_column :faithfuls, :birthdate, :date_of_birth
  end
end

