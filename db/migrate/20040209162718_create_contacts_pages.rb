require "#{RAILS_ROOT}/app/models/contacts_page"

class CreateContactsPages < ActiveRecord::Migration
  def self.up
    create_table :contacts_pages do |t|
      t.string :title
      t.text :body
      t.text :comment

      t.timestamps
    end
    
    ContactsPage.create :title => "Агентство Dreamydays - семейных отдых в Таиланде в виллах, домах и аппартаментах."
  end

  def self.down
    drop_table :contacts_pages
  end
end
