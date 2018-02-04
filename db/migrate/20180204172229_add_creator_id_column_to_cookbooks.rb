class AddCreatorIdColumnToCookbooks < ActiveRecord::Migration[5.1]
  def change
    add_column :cookbooks, :creator_id, :integer
  end
end
