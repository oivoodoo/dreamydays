class CreateGoogleMarkers < ActiveRecord::Migration
  def self.up
    create_table :google_markers do |t|
      t.string :title
      t.float :x
      t.float :y
      t.integer :house_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :google_markers
  end
end
