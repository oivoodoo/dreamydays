class AddAdminCommentToHouse < ActiveRecord::Migration
  def self.up
	add_column :houses, :admin_comment, :text
  end

  def self.down
	remove_column :houses, :admin_comment
  end
end
