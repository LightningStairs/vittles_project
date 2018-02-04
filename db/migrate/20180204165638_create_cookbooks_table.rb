class CreateCookbooksTable < ActiveRecord::Migration[5.1]
  def change
    create_table :cookbooks do |t|
      t.string :title, null: false
      t.belongs_to :user, null: false

      t.timestamps
    end
  end
end
