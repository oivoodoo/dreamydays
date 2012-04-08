class AddBodyColumns < ActiveRecord::Migration
  def self.up
	add_column :catalog_pages, :body, :text
	add_column :sale_pages, :body, :text
  end

  def self.down
	remove_column :catalog_pages, :body
	remove_column :sale_pages, :body
  end
end
