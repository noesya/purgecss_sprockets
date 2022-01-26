require "purgecss_sprockets/version"

require "purgecss_sprockets/post_processor"
require "purgecss_sprockets/railtie"

module PurgecssSprockets
  class Error < StandardError; end

  class << self
    attr_writer :disabled, :exclude_files, :purgecss_cmd

    def disabled
      @disabled ||= false
    end

    def exclude_files
      @exclude_files ||= []
    end

    def purgecss_cmd
      @purgecss_cmd ||= "node node_modules/purgecss/bin/purgecss.js"
    end
  end
end
