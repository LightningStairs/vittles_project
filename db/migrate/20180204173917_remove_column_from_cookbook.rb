class RemoveColumnFromCookbook < ActiveRecord::Migration[5.1]
  def change
    remove_column :cookbooks, :user_id
  end
end
