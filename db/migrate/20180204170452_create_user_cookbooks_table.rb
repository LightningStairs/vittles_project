class CreateUserCookbooksTable < ActiveRecord::Migration[5.1]
  def change
    create_table :user_cookbooks do |t|
      t.belongs_to :user, null: false
      t.belongs_to :cookbooks, null: false
    end
  end
end
