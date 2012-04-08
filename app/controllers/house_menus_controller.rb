class HouseMenusController < AdminController

  layout("admin", conditions = {}, auto = false)

  # GET /house_menus
  # GET /house_menus.xml
  def index
    @house_menus = HouseMenu.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @house_menus }
    end
  end

  # GET /house_menus/1
  # GET /house_menus/1.xml
  def show
    @house_menu = HouseMenu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @house_menu }
    end
  end

  # GET /house_menus/new
  # GET /house_menus/new.xml
  def new
    @house_menu = HouseMenu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @house_menu }
    end
  end

  # GET /house_menus/1/edit
  def edit
    @house_menu = HouseMenu.find(params[:id])
  end

  # POST /house_menus
  # POST /house_menus.xml
  def create
    @house_menu = HouseMenu.new(params[:house_menu])

    respond_to do |format|
      if @house_menu.save
        flash[:notice] = 'HouseMenu was successfully created.'
        format.html { redirect_to(@house_menu) }
        format.xml  { render :xml => @house_menu, :status => :created, :location => @house_menu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @house_menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /house_menus/1
  # PUT /house_menus/1.xml
  def update
    @house_menu = HouseMenu.find(params[:id])

    respond_to do |format|
      if @house_menu.update_attributes(params[:house_menu])
        flash[:notice] = 'HouseMenu was successfully updated.'
        format.html { redirect_to(@house_menu) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @house_menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /house_menus/1
  # DELETE /house_menus/1.xml
  def destroy
    @house_menu = HouseMenu.find(params[:id])
    @house_menu.destroy

    respond_to do |format|
      format.html { redirect_to(house_menus_url) }
      format.xml  { head :ok }
    end
  end
end

