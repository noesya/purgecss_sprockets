require_relative "lib/purgecss_sprockets/version"

Gem::Specification.new do |spec|
  spec.name          = "purgecss_sprockets"
  spec.version       = PurgecssSprockets::VERSION
  spec.authors       = ["Sébastien Gaya"]
  spec.email         = ["sebastien.gaya@gmail.com"]

  spec.summary       = "Use PurgeCSS in Rails asset pipeline."
  spec.description   = "Reduce CSS file size by removing unused selectors with PurgeCSS in Rails asset pipeline."
  spec.homepage      = "https://github.com/noesya/purgecss_sprockets"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/noesya/purgecss_sprockets"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "rails"
  spec.add_dependency "sprockets-rails"
end
