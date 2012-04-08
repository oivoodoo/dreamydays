class BasePageController < AdminController
  voo_base_pages :main_page, :contacts_page, :about_page, :travelling_page, :services_page, :catalog_page, :sale_page
  uses_tiny_mce(:options => AppConfig.default_mce_options)

  def index
  end
end
