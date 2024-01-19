class AddTwoAttributesToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :local_address, :string
    add_column :students, :permament_address, :string
  end
end
