module PurgecssSprockets
  class PostProcessor
    def initialize(filename, &block)
      @filename = filename
      @source   = block.call
    end

    def render(context, empty_hash_wtf)
      self.class.run(@filename, @source, context)
    end

    def self.run(filename, source, context)
      if context && context.environment
        context.environment.logger&.info "Purging CSS from #{filename}"
      end

      file = Tempfile.new(filename)
      file.write(source)
      file.rewind

      purgecss_result = JSON.parse(`#{PurgecssSprockets.purgecss_cmd} --css #{file.path} --config purgecss.config.js`)
      file.close
      file.unlink

      purgecss_result[0]['css']
    end

    def self.call(input)
      filename = input[:filename]
      source   = input[:data]
      context  = input[:environment].context_class.new(input)

      result = run(filename, source, context)
      context.metadata.merge(data: result)
    end
  end
end
