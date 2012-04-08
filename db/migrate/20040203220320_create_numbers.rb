class CreateNumbers < ActiveRecord::Migration
  def self.up
    create_table :numbers do |t|
      t.string :title
      t.integer :search_id
      t.timestamps
    end
  end

  def self.down
    drop_table :numbers
  end
end
