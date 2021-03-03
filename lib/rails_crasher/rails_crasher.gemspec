
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_crasher/version"

Gem::Specification.new do |spec|
  spec.name          = "rails_crasher"
  spec.version       = RailsCrasher::VERSION
  spec.authors       = ["Kai Marshland"]
  spec.email         = ["kai@windbornesystems.com"]

  spec.summary       = %q{Crash rails}

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  spec.files         = spec.files = Dir["{lib,ext}/**/*.{c, rb}",
                                        "Rakefile",
                                        "README.md"]
  spec.require_paths = ["lib"]
  spec.extensions = ['ext/rails_crasher/extconf.rb']

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
end
