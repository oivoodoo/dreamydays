class AddMetaToHouse < ActiveRecord::Migration
  def self.up
    add_column :houses, :meta_keywords, :string
    add_column :houses, :meta_description, :text
  end

  def self.down
    remove_column :houses, :meta_keywords
    remove_column :houses, :meta_description
  end
end
