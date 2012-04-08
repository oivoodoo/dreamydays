class AddBottomContentToMainPage < ActiveRecord::Migration
  def self.up
    add_column :main_pages, :right_bottom_content, :text
  end

  def self.down
    remove_column :main_pages, :right_bottom_content
  end
end
