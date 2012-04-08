class Asset < ActiveRecord::Base

  belongs_to :house

  has_attached_file :document
  
  attr_accessor :should_destroy
  
  def should_destroy?
    should_destroy.to_i == 1
  end

end
