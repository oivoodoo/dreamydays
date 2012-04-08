class CreateSalePages < ActiveRecord::Migration
  def self.up
    create_table :sale_pages do |t|
      t.string :title
      t.string :meta_keywords
      t.text :meta_description

      t.timestamps
    end

    SalePage.create :title => "Дома, виллы и аппартаменты в Таиланде, остров Самуи."
  end

  def self.down
    drop_table :sale_pages
  end
end
