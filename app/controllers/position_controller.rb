class PositionController < AdminController
  def index
    @houses = House.find(:all)
  end

  def set_positions
    houses = params[:houses_position]
    if not houses.nil? then
      houses.each do |id, values|
        house = House.find(id)
        house.position = values[:position]
        house.save
      end
    end
    redirect_to :controller => :houses,
                :action => :index
  end
end
