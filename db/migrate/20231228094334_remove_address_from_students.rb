class RemoveAddressFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :address, :string
  end
end
