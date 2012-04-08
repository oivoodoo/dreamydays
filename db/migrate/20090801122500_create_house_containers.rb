class CreateHouseContainers < ActiveRecord::Migration
  def self.up
    create_table :house_containers do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :house_containers
  end
end
