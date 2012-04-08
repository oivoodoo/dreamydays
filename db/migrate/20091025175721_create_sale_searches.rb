class CreateSaleSearches < ActiveRecord::Migration
  def self.up
    create_table :sale_searches do |t|
      t.integer :location_id
      t.integer :price_id
      t.integer :number_id

      t.timestamps
    end

    add_column :locations, :sale_search_id, :integer
    add_column :numbers, :sale_search_id, :integer
    add_column :prices, :sale_search_id, :integer

    SaleSearch.create
  end

  def self.down
    drop_table :sale_searches
    remove_column :locations, :sale_search_id
    remove_column :numbers, :sale_search_id
    remove_column :prices, :sale_search_id
  end
end
