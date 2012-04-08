class JavascriptController < ApplicationController
  voo_move_item :house_container, :house,
                :select => "id, title, house_container_id, position, updated_at, house_type",
                :conditions => "(house_type = ? or house_type = 'all')"
end

