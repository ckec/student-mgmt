class RenameTwoAttributes < ActiveRecord::Migration[6.0]
  def change
    rename_column :students, :permament_contact_number, :permanent_contact_number
    rename_column :students, :permament_address, :permanent_address
  end
end
