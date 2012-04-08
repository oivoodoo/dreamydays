class AddNewColumn < ActiveRecord::Migration
  def self.up
	add_column :houses, :sale_bottom_text, :text
  end

  def self.down
	remove_column :houses, :sale_bottom_text
  end
end
