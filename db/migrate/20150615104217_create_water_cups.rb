class CreateWaterCups < ActiveRecord::Migration
  def change
    create_table :water_cups do |t|
      t.string :name
      t.integer :age
      t.boolean :condition

      t.timestamps null: false
    end
  end
end
