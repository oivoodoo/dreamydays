class CreateHouses < ActiveRecord::Migration
  def self.up
    create_table :houses do |t|
      t.string :title
      t.string :catalog_title
      t.text :comment
      t.text :text
      t.text :bottom_text
      t.string :location
      t.integer :number
      t.string :high_duration_1
      t.string :high_duration_2
      t.string :low_duration_1
      t.string :low_duration_2
      t.string :high_cost_day
      t.string :high_cost_week
      t.string :high_cost_month
      t.string :low_cost_day
      t.string :low_cost_week
      t.string :low_cost_month
      t.string :is_main
      t.integer :number_photo
      t.string :special_offer
      t.string :is_visible
      t.integer :price_id
      t.integer :position
      
      t.timestamps
    end
  end
  
  def self.down
    drop_table :houses
  end
end
