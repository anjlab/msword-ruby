# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'msword/version'

Gem::Specification.new do |gem|
  gem.name          = "msword"
  gem.version       = MSWord::VERSION
  gem.authors       = ["yury"]
  gem.email         = ["yury.korolev@gmail.com"]
  gem.description   = %q{Work with MS Word doc files with ruby}
  gem.summary       = %q{Work with MS Word doc files with ruby}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.files         << 'lib/msword.jar'
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "multi_json"
end
