class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.belongs_to :recipe, null: false
      t.string :name, null: false
      t.string :unit_of_measurement, null: false
      t.integer :quantity, null: false
    end
  end
end
