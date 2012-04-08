class Photo < ActiveRecord::Base
  belongs_to :house
  
  has_attached_file :photo, :styles => { :medium => "455x305>", :thumb => "125x72>" }
  
  attr_accessor :should_destroy
  
  def should_destroy?
    should_destroy.to_i == 1
  end
  
  def is_valid?
    not (photo_file_size.nil? or photo_content_type.nil?)
  end
end
