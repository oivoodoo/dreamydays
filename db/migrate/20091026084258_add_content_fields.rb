class AddContentFields < ActiveRecord::Migration
  def self.up
	add_column :catalog_pages, :content, :text
	add_column :sale_pages, :content, :text
  end

  def self.down
	remove_column :catalog_pages, :content
	remove_column :sale_pages, :content
  end
end
