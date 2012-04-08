class Admin::FooterController < AdminController
  uses_tiny_mce(:options => AppConfig.default_mce_options, :only => [:index, :update])

  def index
    @footer = Footer.first
  end

  def update
    @footer = Footer.find(params[:id])
    @footer.update_attributes(params[:footer])
    render :action => 'index'
  end
end
