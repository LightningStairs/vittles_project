class CreateRecipesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes_tables do |t|
      t.belongs_to :cookbook, null: false
      t.belongs_to :user, null: false
      t.string :title, null: false
      t.string :image
    end
  end
end
