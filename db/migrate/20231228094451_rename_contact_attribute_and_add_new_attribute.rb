class RenameContactAttributeAndAddNewAttribute < ActiveRecord::Migration[6.0]
  def change
    rename_column :students, :contact, :permament_contact_number
    add_column :students, :alternate_contact_number, :string
  end
end
