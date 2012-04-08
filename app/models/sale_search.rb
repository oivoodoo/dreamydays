class SaleSearch < ActiveRecord::Base
   has_many :locations
  has_many :prices
  has_many :numbers

  after_update :save_collections

  def save_collections
    [locations, prices, numbers].each do |collection|
      save_collection(collection)
    end
  end

  def save_collection(collection)
    collection.each do |item|
      if not item.nil? and item.should_destroy? then
        item.destroy
      else
        item.save(false)
      end
    end
  end

  def location_attributes=(location_attributes)
    location_attributes.each do |attributes|
      if attributes[:id].blank? then
        locations.build(attributes)
      else
        for location in locations
          if location.id == attributes[:id].to_i then
            location.attributes = attributes
            break
          end
        end
      end
    end
  end

  def price_attributes=(price_attributes)
    price_attributes.each do |attributes|
      if attributes[:id].blank? then
        prices.build(attributes)
      else
        for price in prices
          if price.id == attributes[:id].to_i then
            price.attributes = attributes
            break
          end
        end
      end
    end
  end

  def number_attributes=(number_attributes)
    number_attributes.each do |attributes|
      if attributes[:id].blank? then
        numbers.build(attributes)
      else
        for number in numbers
          if number.id == attributes[:id].to_i then
            number.attributes = attributes
            break
          end
        end
      end
    end
  end
end
