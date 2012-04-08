require "#{RAILS_ROOT}/app/models/services_page"

class CreateServicesPages < ActiveRecord::Migration
  def self.up
    create_table :services_pages do |t|
      t.string :title
      t.text :body
      t.text :comment

      t.timestamps
    end
    
    ServicesPage.create
  end

  def self.down
    drop_table :services_pages
  end
end
