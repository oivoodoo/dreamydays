class UsersController < AdminController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  
  def index
    @users = User.find(:all)
  end

  def logout
    session[:user] = nil
    redirect_to :controller => :main, :action => :index
  end
  
  def change_password
    @user = User.find_by_id(session[:user_id])
  end

  def do_change_password
    @user = User.find(session[:user_id])
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password]
    respond_to do |format|
      if @user.save
        flash[:notice] = 'Пароль успешно изменён.'
        format.html { redirect_to :controller => :admin, :action => :index }
        format.xml  { head :ok }
      else
        format.html { redirect_to :controller => :main, :action => :index }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
end
