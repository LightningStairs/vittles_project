class RemoveBosyColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :body
  end
end
