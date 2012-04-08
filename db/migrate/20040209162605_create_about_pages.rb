require "#{RAILS_ROOT}/app/models/about_page"

class CreateAboutPages < ActiveRecord::Migration
  def self.up
    create_table :about_pages do |t|
      t.string :title
      t.text :body
      t.text :comment

      t.timestamps
    end
    
    AboutPage.create :title => "Фрукты таиланд, виза таиланд, погода таиланд, отдых тайланде, таиланд с детьми, тайская кухня, еда в Таиланде"
  end

  def self.down
    drop_table :about_pages
  end
end
