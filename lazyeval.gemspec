# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lazyeval/version'

Gem::Specification.new do |s|
  s.name          = "lazyeval"
  s.version       = Lazyeval::VERSION
  s.authors       = ["Vitaly Kushner"]
  s.email         = ["vitaly@astrails.com"]
  s.description   = %q{This GEM allows to call methods lazily. The actual
  work will not be performed until the result is used. There's no
  promise/force semantics, just a single call (or block) is stored and
  executed the first time the (lazy) result is accessed.  }
  s.summary       = %q{This gem provides a very simple lazy evaluation for Ruby}
  s.homepage      = %q{http://github.com/vitaly/lazyeval}
  s.license       = "MIT"

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'guard'
  s.add_development_dependency 'guard-minitest'
  s.add_development_dependency 'terminal-notifier-guard'
  s.add_development_dependency 'debugger'
end
