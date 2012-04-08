class MainMenusController < AdminController
  
  layout("admin", conditions = {}, auto = false)
  
  # GET /main_menus
  # GET /main_menus.xml
  def index
    @main_menus = MainMenu.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @main_menus }
    end
  end

  # GET /main_menus/1
  # GET /main_menus/1.xml
  def show
    @main_menu = MainMenu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @main_menu }
    end
  end

  # GET /main_menus/new
  # GET /main_menus/new.xml
  def new
    @main_menu = MainMenu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @main_menu }
    end
  end

  # GET /main_menus/1/edit
  def edit
    @main_menu = MainMenu.find(params[:id])
  end

  # POST /main_menus
  # POST /main_menus.xml
  def create
    @main_menu = MainMenu.new(params[:main_menu])

    respond_to do |format|
      if @main_menu.save
        flash[:notice] = 'MainMenu was successfully created.'
        format.html { redirect_to(@main_menu) }
        format.xml  { render :xml => @main_menu, :status => :created, :location => @main_menu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @main_menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /main_menus/1
  # PUT /main_menus/1.xml
  def update
    @main_menu = MainMenu.find(params[:id])

    respond_to do |format|
      if @main_menu.update_attributes(params[:main_menu])
        flash[:notice] = 'MainMenu was successfully updated.'
        format.html { redirect_to(@main_menu) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @main_menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /main_menus/1
  # DELETE /main_menus/1.xml
  def destroy
    @main_menu = MainMenu.find(params[:id])
    @main_menu.destroy

    respond_to do |format|
      format.html { redirect_to(main_menus_url) }
      format.xml  { head :ok }
    end
  end
end
