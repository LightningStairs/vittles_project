class CreateInstructions < ActiveRecord::Migration[5.1]
  def change
    create_table :instructions do |t|
      t.belongs_to :recipe, null: false
      t.string :body, null: false
    end
  end
end
