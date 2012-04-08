require "#{RAILS_ROOT}/app/models/price"

class CreatePrices < ActiveRecord::Migration
  def self.up
    create_table :prices do |t|
      t.string :title
      t.integer :search_id
      t.integer :house_id
      t.timestamps
    end
    
    Price.create :title => "дешевле 1000$", :search_id => 1
    Price.create :title => "1000-1500$",  :search_id => 1
    Price.create :title => "дороже 1500 долларов",  :search_id => 1
  end

  def self.down
    drop_table :prices
  end
end
