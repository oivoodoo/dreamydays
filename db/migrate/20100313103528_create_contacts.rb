class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :number_adult
      t.integer :number_children
      t.integer :number_bedroom
      t.datetime :date1
      t.datetime :date2
      t.string :price
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
