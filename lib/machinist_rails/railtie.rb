require 'machinist'
require 'rails'

module Machinist
  class Railtie < Rails::Railtie
    config.generators.fixture_replacement :machinist
    config.after_initialize do
      Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
    end
  end
end
