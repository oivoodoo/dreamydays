require "#{RAILS_ROOT}/app/models/catalog_page"

class CreateCatalogPages < ActiveRecord::Migration
  def self.up
    create_table :catalog_pages do |t|
      t.string :title
      t.string :meta_keywords
      t.text :meta_description

      t.timestamps
    end
    
    CatalogPage.create :title => "Дома, виллы и аппартаменты в Таиланде, остров Самуи."
  end

  def self.down
    drop_table :catalog_pages
  end
end
