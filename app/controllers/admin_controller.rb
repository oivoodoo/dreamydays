module Admin ; end

class AdminController < ApplicationController
  before_filter :authenticate, :except => %w(login new_session)
  
  layout("admin", conditions = {}, auto = false)

  def index
    @search = Search.first
    @sale_search = SaleSearch.first
  end

  def login 

  end

  def new_session
    user = User.authenticate(params[:name], params[:password])
    if user.nil?
     redirect_to :controller => "admin", :action => "login" 
    else 
      session[:user_id] = user.id
      redirect_to :controller => "admin", :action => 'index' 
    end
  end

 private
  def authenticate
   if session[:user_id].nil?
     redirect_to :controller => "admin", :action => "login" 
   end
  end
end
