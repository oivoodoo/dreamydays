class RemoveInvalidSearch < ActiveRecord::Migration
  def self.up
    l = Location.find_by_search_id(nil)
    l.destroy unless l.nil?
    p = Price.find_by_search_id(nil)
    p.destroy unless p.nil?
    n = Number.find_by_search_id(nil)
    n.destroy unless n.nil?
  end

  def self.down
  end
end
