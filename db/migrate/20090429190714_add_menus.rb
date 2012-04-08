require "#{RAILS_ROOT}/app/models/main_menu"

class AddMenus < ActiveRecord::Migration
  def self.up
    MainMenu.destroy_all
  
    MainMenu.create :title => "Главная",
      :link => "/main/index",
      :position => 0
    
    MainMenu.create :title => "Каталог",
      :link => "/main/catalog",
      :position => 1
      
    MainMenu.create :title => "О Самуи",
      :link => "/main/about",
      :position => 2

    MainMenu.create :title => "Услуги",
      :link => "/main/services",
      :position => 3
      
    MainMenu.create :title => "Путешествие с детьми",
      :link => "/main/services",
      :position => 4

    MainMenu.create :title => "Контакты",
      :link => "/main/contacts",
      :position => 5
  end

  def self.down
  end
end
