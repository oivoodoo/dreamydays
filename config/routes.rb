ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'main', :action => 'index'
  map.connect '', :controller => 'main', :action => 'index'
  map.connect '/index.:format', :controller => 'main', :action => "index"

  map.about '/about', :controller => "main", :action => "about"
  map.services '/services', :controller => "main", :action => "services"
  map.travelling '/travelling', :controller => "main", :action => "travelling"
  map.catalog '/catalog', :controller => "main", :action => "catalog"
  map.contacts '/contacts', :controller => "main", :action => "contacts"
  map.send_contacts '/send_contacts', :controller => "main", :action => "send_contacts", :conditions => {:method => :post}
  map.send_phone_contacts '/send_phone_contacts', :controller => "main", :action => "send_phone_contacts", :conditions => {:method => :post}
  map.search_query '/search', :controller => "search", :action => "index"
  map.export_rss '/export.:format', :controller => "houses", :action => "export"
  map.feed '/feed.:format', :controller => "main", :action => "feed"
  map.show_house '/main/show_house/:id', :controller => "main", :action => "show_house"
  map.show_article '/main/show_article/:id', :controller => "main", :action => "show_article"
 
  map.namespace :admin do |admin|
    admin.resources :contacts, :only => [:index, :destroy]
  end

  map.resources :users, :members => {:logout => :get, :change_password => :get, :do_change_password => :put} 
  map.resources :session
  map.admin '/admin', :controller => "admin", :action => "index"
  map.new_session '/admin/new_session', :controller => "admin", :action => "new_session"
  map.login '/login', :controller => "admin", :action => "login"
  map.base_page '/base_page', :controller => "base_page", :action => "index"
  map.resources :conditions
  map.resources :main_menus
  map.resources :house_menus
  map.resources :searches
  map.resources :sale_searches
  map.resources :banners
  map.resources :articles
  map.resources :phone_contacts, :only => [:index, :destroy]
  map.resources :assets, :only => [:new, :create, :index, :show]
  map.resources :houses, :member => {:export => :get, :rent => :get, :sale => :get}, :collection => {:update_positions => :post, :update_container => :post}
  map.tiny_mce_photos '/tiny_mce_photos', :controller => "tiny_mce_photos", :action => "index"
  map.tiny_mce_photos_create '/tiny_mce_photos', :controller => "tiny_mce_photos", :action => "create", :conditions => {:collection => :post}
  map.index_rent '/h/index_rent', :controller => "houses", :action => "index_rent"
  map.index_sale '/h/index_sale', :controller => "houses", :action => "index_sale"
  
  map.article '/:id', :controller => "main", :action => "show_article"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
