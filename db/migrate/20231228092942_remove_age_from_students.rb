class RemoveAgeFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :age, :integer
  end
end
