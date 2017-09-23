
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "npm_download_api/version"

Gem::Specification.new do |spec|
  spec.name          = "npm_download_api"
  spec.version       = NpmDownloadApi::VERSION
  spec.authors       = ["Weston Platter"]
  spec.email         = ["westonplatter@gmail.com"]

  spec.summary       = %q{get stats from npm's stats service}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/westonplatter/npm_download_api"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "rest-client"

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
