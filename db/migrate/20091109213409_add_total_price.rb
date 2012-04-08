class AddTotalPrice < ActiveRecord::Migration
  def self.up
    add_column :houses, :total_price, :text
  end

  def self.down
    remove_column :houses, :total_price
  end
end

