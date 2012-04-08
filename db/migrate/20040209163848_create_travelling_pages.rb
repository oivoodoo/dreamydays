require "#{RAILS_ROOT}/app/models/travelling_page"

class CreateTravellingPages < ActiveRecord::Migration
  def self.up
    create_table :travelling_pages do |t|
      t.string :title
      t.text :body
      t.text :comment

      t.timestamps
    end
    
    TravellingPage.create :title => "дети тур, отдых с детьми, отдых с ребенком, страховка для детей, страховка в Таиланде, перелет с ребенком"
  end

  def self.down
    drop_table :travelling_pages
  end
end
