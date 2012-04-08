class Admin::HeaderController < AdminController
  uses_tiny_mce(:options => AppConfig.default_mce_options, :only => [:index, :update])
  
  def index
    @header = Header.first   
  end

  def update
    @header = Header.find(params[:id])
    @header.update_attributes(params[:header])
    render :action => 'index'
  end
end
