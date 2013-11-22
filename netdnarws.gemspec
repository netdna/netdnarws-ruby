# -*- encoding: utf-8 -*-
require File.expand_path('../lib/netdnarws/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name = "netdnarws"
  gem.homepage = "http://developer.netdna.com"
  gem.version = NetDNARWS::VERSION
  gem.license = "MIT"
  gem.files = `git ls-files`.split($\)
  gem.require_paths = ['lib']
  gem.summary = %Q{A Rest Client For NetDNA Rest Web Services}
  gem.description = %Q{A Rest Client For NetDNA Rest Web Services}
  gem.email = "devteam@netdna.com"
  gem.authors = ["NetDNA Developer Team"]
  gem.add_dependency 'json' if RUBY_VERSION.start_with? "1.8"
  gem.add_dependency 'signet'
  gem.add_dependency 'curb-fu'
end
