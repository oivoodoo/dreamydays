class AddHouseColumns < ActiveRecord::Migration
  def self.up
    add_column :houses, :location_id, :integer
    add_column :houses, :number_id, :integer
    add_column :locations, :house_id, :integer
    add_column :numbers, :house_id, :integer
  end

  def self.down
    remove_column :houses, :location_id
    remove_column :houses, :number_id
    remove_column :locations, :house_id
    remove_column :numbers, :house_id
  end
end
