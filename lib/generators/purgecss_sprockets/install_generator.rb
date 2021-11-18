# frozen_string_literal: true
module PurgecssSprockets
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Copy PurgeCSS default configuration"
      source_root File.expand_path('../templates', __FILE__)

      def copy_config
        template "purgecss.config.js"
      end
    end
  end
end
