module MainHelper
  def render_big_image(house, iterator, house_type)
    css_classes = ["left-column", "right-column"]

    selected = 0
    if not house.number_photo.nil? then
      selected = house.number_photo
    end

    if house.photos[selected].nil? or house.photos[selected].photo.nil?
    	return -1;
    end

    render :partial => 'big_image',
           :object => house.photos[selected],
           :locals => { :frame_class => css_classes[iterator % 2 == 0 ? 0 : 1],
                        :house_title => house.title,
                        :house_id => house.id,
                        :house_special_offer => house.special_offer,
                        :house_type => house_type }
  end

  def render_search_control_div(f, collection, name, title, css_class)
    "<div class=\"forselect\">#{render_search_control(f, collection, name, title, css_class)}</div>"
  end

  def render_search_control(f, collection, name, title, css_class)
    f.select(name, collection.collect {|p| [p.title, p.id] }, {:include_blank => title }, :class => css_class)
  end

  def render_search_control_div_title(f, collection, name, title, css_class)
    "<div class=\"forselect\">#{render_search_control(f, collection, name, title, css_class)}</div>"
  end

  def render_search_control_title(f, collection, name, title, css_class)
    f.select(name, collection.collect {|p| [p.title, p.title] }, {:include_blank => title }, :class => css_class)
  end
end

