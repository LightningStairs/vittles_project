class ChangeRecipesTablesToRecipes < ActiveRecord::Migration[5.1]
  def change
    rename_table :recipes_tables, :recipes
  end
end
