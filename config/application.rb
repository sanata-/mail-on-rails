require File.expand_path('../boot', __FILE__)

require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module YandexMailbox
  class Application < Rails::Application
    config.autoload_paths << Rails.root.join('services')
    config.generators do |g|
       g.test_framework :rspec, :fixture => true
       g.fixture_replacement :factory_girl, :dir => "spec/factories"
       g.view_specs false
       g.helpers_spec false
       g.stylesheets = false
       g.javascripts = false
       g.helper = false
    end
  end
end
