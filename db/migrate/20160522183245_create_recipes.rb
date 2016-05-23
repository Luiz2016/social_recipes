class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :kitchen
      t.string :kind
      t.string :proferably
      t.integer :serves
      t.integer :preparation_time
      t.string :level
      t.text :ingredients
      t.text :step_by_step

      t.timestamps null: false
    end
  end
end
