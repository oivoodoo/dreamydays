class CreateHouseMenus < ActiveRecord::Migration
  def self.up
    create_table :house_menus do |t|
      t.string :title
      t.string :link
      t.integer :position
      
      t.timestamps
    end
  end

  def self.down
    drop_table :house_menus
  end
end
