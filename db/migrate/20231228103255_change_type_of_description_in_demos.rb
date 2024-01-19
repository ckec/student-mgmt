class ChangeTypeOfDescriptionInDemos < ActiveRecord::Migration[6.0]
  def up
    change_column :demos, :description, :text
  end

  def down
    change_column :demos, :description, :string
  end
end
