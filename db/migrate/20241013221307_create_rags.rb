class CreateRags < ActiveRecord::Migration[7.2]
  def change
    create_table :rags do |t|
      t.string :name
      t.text :description
      t.integer :rate
      t.string :color
      t.string :size

      t.timestamps
    end
  end
end
