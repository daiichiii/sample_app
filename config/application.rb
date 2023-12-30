require_relative "boot"
require "rails/all"
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    config.load_defaults 7.0
    config.active_storage.variant_processor = :mini_magick

    # config.autoload_paths += %W(#{config.root}/app/models)
    config.eager_load_paths += %W(#{config.root}/app/models)
  end
end
