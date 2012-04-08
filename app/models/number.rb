class Number < ActiveRecord::Base 
  belongs_to :search
  belongs_to :sale_search
  has_many :houses

  attr_accessor :should_destroy
  
  def should_destroy?
    should_destroy.to_i == 1
  end

end
