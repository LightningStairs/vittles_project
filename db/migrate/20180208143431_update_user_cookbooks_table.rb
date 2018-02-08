class UpdateUserCookbooksTable < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :user_cookbooks, :cookbooks_id, :cookbook_id
  end

  def self.down
    rename_column :user_cookbooks, :cookbook_id, :cookbooks_id
  end
end
