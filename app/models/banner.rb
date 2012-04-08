class Banner < ActiveRecord::Base
  has_attached_file :banner, :styles => { :medium => "250x1000>", :thumb => "125x72>" }
end
