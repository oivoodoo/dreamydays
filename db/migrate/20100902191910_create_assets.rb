class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.integer :document_size
      t.string :document_content_type
      t.string :document_file_name
      t.integer :house_id
      t.boolean :is_visible
  
      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
