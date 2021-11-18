require 'sprockets/processing'

module PurgecssSprockets
  class Railtie < ::Rails::Railtie
    extend Sprockets::Processing

    initializer :purgecss, group: :all do |app|
      app.config.assets.configure do |env|
        env.register_postprocessor 'text/css', PostProcessor
      end
    end
  end
end
