RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.gem 'formtastic'
  config.gem 'rack', :version => '1.0.1'
  config.time_zone = 'UTC'

  config.action_controller.session = {
    :session_key => '_rails_session',
    :secret      => '23e04cbf62183a7a9145f1e949fc31e21c38548f567a8d963500f17c63defdc9ede4f1fd2eed95320b1d4d9705d727e13b0dc8475f2cb671b1442f020ca33151'
  }
end

require "will_paginate"

WillPaginate::ViewHelpers.pagination_options[:prev_label] = '<< Предыдущая'
WillPaginate::ViewHelpers.pagination_options[:next_label] = 'Следующая >>'
WillPaginate::ViewHelpers.pagination_options[:inner_window] = 50
WillPaginate::ViewHelpers.pagination_options[:outer_window] = 50
