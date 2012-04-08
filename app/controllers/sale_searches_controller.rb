class SaleSearchesController < ApplicationController
  layout("admin", conditions = {}, auto = false)
  
  def edit
    @search = SaleSearch.find(:first)
  end

  def update
    @search = SaleSearch.find(params[:id])

    respond_to do |format|
      if @search.update_attributes(params[:search])
        flash[:notice] = 'House was successfully updated.'
        format.html { redirect_to :controller => :admin, :action => :index }
        format.xml  { head :ok }
      else
        format.html { render :controller => :admin, :action => :index }
        format.xml  { render :xml => @search.errors, :status => :unprocessable_entity }
      end
    end
  end
end
