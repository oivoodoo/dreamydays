class AddMetaFields < ActiveRecord::Migration
  def self.up
    add_column :about_pages, :meta_keywords, :string
    add_column :about_pages, :meta_description, :text
    add_column :contacts_pages, :meta_keywords, :string
    add_column :contacts_pages, :meta_description, :text
    add_column :main_pages, :meta_keywords, :string
    add_column :main_pages, :meta_description, :text
    add_column :services_pages, :meta_keywords, :string
    add_column :services_pages, :meta_description, :text
    add_column :travelling_pages, :meta_keywords, :string
    add_column :travelling_pages, :meta_description, :text
    add_column :articles, :meta_keywords, :string
    add_column :articles, :meta_description, :text
  end

  def self.down
    remove_column :about_pages, :meta_keywords
    remove_column :about_pages, :meta_description
    remove_column :contacts_pages, :meta_keywords
    remove_column :contacts_pages, :meta_description
    remove_column :main_pages, :meta_keywords
    remove_column :main_pages, :meta_description
    remove_column :services_pages, :meta_keywords
    remove_column :services_pages, :meta_description
    remove_column :travelling_pages, :meta_keywords
    remove_column :travelling_pages, :meta_description
    remove_column :articles, :meta_keywords
    remove_column :articles, :meta_description
  end
end
