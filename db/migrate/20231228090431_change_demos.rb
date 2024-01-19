class ChangeDemos < ActiveRecord::Migration[6.0]
  def change
    remove_column :demos, :title, :string
    add_column :demos, :name, :string
    add_column :demos, :description, :string
  end
end