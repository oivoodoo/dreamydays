require "#{RAILS_ROOT}/app/models/house_container.rb"
require "#{RAILS_ROOT}/app/models/house.rb"
require "#{RAILS_ROOT}/app/models/photo.rb"
require "#{RAILS_ROOT}/app/models/price.rb"
require "#{RAILS_ROOT}/app/models/google_marker.rb"

class AddHouseContainerIdToHouse < ActiveRecord::Migration
  def self.up
    add_column :houses, :house_container_id, :integer

    container = HouseContainer.create

    House.all.each do |house|
      house.house_container_id = container.id
      house.save!
    end
  end

  def self.down
    remove_column :houses, :house_container_id
  end
end
