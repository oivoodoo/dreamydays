class CreateSearches < ActiveRecord::Migration
  def self.up
    create_table :searches do |t|
      t.integer :location_id
      t.integer :price_id
      t.integer :number_id
      t.timestamps
    end
    
    Search.create
  end

  def self.down
    drop_table :searches
  end
end
