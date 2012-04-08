class HousesController < AdminController
  layout("admin", conditions = {}, auto = false)
  uses_tiny_mce(:options => AppConfig.default_mce_options, :only => [:new, :edit])
  skip_before_filter :verify_authenticity_token, :only => [:update_positions, :update_container]

  # GET /houses
  # GET /houses.xml
  def index
  end

  def index_rent
    @houses_rent = House.all(:conditions => ["house_type = 'all' or house_type = 'rent'"]).paginate :page => params[:page]
  end

  def index_sale
    @houses_sale = House.all(:conditions => ["house_type = 'sale' or house_type = 'all'"]).paginate :page => params[:page]
  end

  # GET /houses/1
  # GET /houses/1.xml
  def show
    @house = House.find(params[:id])
    @menus = HouseMenu.find(:all)
  end

  # GET /houses/new
  # GET /houses/new.xml
  def new
    @house = House.new
  end

  # POST /houses
  # POST /houses.xml
  def create
    @house = House.new(params[:house])
    @house.house_container_id = HouseContainer.first.id

    respond_to do |format|
      if @house.save
        flash[:notice] = 'House was successfully created.'
        format.html { redirect_to houses_path }
        format.xml  { render :xml => @house, :status => :created, :location => @house }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @house.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @house = House.find(params[:id])
  end

  # PUT /houses/1
  # PUT /houses/1.xml
  def update
    @house = House.find(params[:id])

    respond_to do |format|
      if @house.update_attributes(params[:house])
        flash[:notice] = 'House was successfully updated.'
        format.html { redirect_to houses_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @house.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update_positions
    values = eval_json(params[:values])
    values.uniq.each do |v|
      House.find(v['id'].to_i).update_attributes(:group_position => v['value'].to_i)
    end
    render :text => ""
  end

  def update_container
    if params[:house_type] == 'rent'
      @houses = House.all(:conditions => ["house_type = 'all' or house_type = 'rent'"])
    else
      @houses = House.all(:conditions => ["house_type = 'sale' or house_type = 'all'"])
    end
    render :partial => "editable_house", :collection => @houses, :locals => {:house_type => params[:house_type]}
  end

  # DELETE /houses/1
  # DELETE /houses/1.xml
  def destroy
    @house = House.find(params[:id])
    @house.destroy

    respond_to do |format|
      format.html { redirect_to(houses_url) }
      format.xml  { head :ok }
    end
  end
end

