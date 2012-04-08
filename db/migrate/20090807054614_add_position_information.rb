class AddPositionInformation < ActiveRecord::Migration
  def self.up
	i = 0;
	House.all.each {|house| house.update_attributes(:position => i); i = i + 1;}
  end

  def self.down
  end
end
