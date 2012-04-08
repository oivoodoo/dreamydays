class SearchesController < AdminController
  layout("admin", conditions = {}, auto = false)
  def edit
    @search = Search.find(:first)
  end
  
  def update
    @search = Search.find(params[:id])

    respond_to do |format|
      if @search.update_attributes(params[:search])
        flash[:notice] = 'House was successfully updated.'
        format.html { redirect_to :controller => :admin, :action => :index }
        format.xml  { head :ok }
      else
        format.html { render :controller => :admin, :action => :index }
        format.xml  { render :xml => @house.errors, :status => :unprocessable_entity }
      end
    end
  end
end
