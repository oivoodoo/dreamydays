class CreateHouseTypes < ActiveRecord::Migration
  def self.up
    create_table :house_types do |t|
      t.string :name
      t.string :title

      t.timestamps
    end

    add_column :houses, :house_type, :string

    HouseType.create :title => "Аренда", :name => "rent"
    HouseType.create :title => "Продажа", :name => "sale"

    House.all.each do |house|
      house.update_attributes :house_type => "rent"
    end
  end

  def self.down
    drop_table :house_types
    remove_columns :houses, :house_type
  end
end
