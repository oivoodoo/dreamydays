# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery  :secret => '65468990f1f6b46db26e44a55135998c'
  filter_parameter_logging :password
  before_filter :render_menu
  before_filter :get_header
  before_filter :get_footer
  skip_after_filter :add_google_analytics_code

  attr_reader :current_user

protected
  def login_required
    if @current_user.nil?
      @current_user = User.find(session[:user_id]) unless session[:user_id].nil?
    end
  end

  def eval_json(json)
    value = json
    value = value.gsub(':', '=>')
    value = value.gsub('http=>', 'http:')
    value = value.gsub('null', '""')
    eval(value)
  end

  def render_menu
    @main_menus ||= MainMenu.find(:all, :order => "position")
    @banners ||= Banner.find(:all, :order => "created_at")
    true
  end

  def get_header
    @header = Header.first
  end

  def get_footer
    @footer = Footer.first
  end
end

