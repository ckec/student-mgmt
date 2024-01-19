class CreateMomo < ActiveRecord::Migration[6.0]
  def change
    create_table :momos do |t|
      t.string :name

      t.timestamps
    end
  end
end
