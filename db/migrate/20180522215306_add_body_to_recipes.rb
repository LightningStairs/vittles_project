class AddBodyToRecipes < ActiveRecord::Migration[5.1]
  def up
    add_column :recipes, :body, :string
    change_column_null :recipes, :body, false
  end

  def down
    remove_column :recipes, :body, :string
  end
end
