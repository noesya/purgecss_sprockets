require "purgecss_sprockets/version"

require "purgecss_sprockets/post_processor"
require "purgecss_sprockets/railtie"

module PurgecssSprockets
  class Error < StandardError; end

  class << self
    attr_writer :disabled, :purgecss_cmd

    def disabled
      @disabled ||= false
    end

    def purgecss_cmd
      @purgecss_cmd ||= "node node_modules/purgecss/bin/purgecss.js"
    end
  end
end
