# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sequel/audited/version'

Gem::Specification.new do |spec|
  spec.name          = 'sequel_audited'
  spec.version       = Sequel::Audited::VERSION
  spec.authors       = ['Kematzy', 'tohchye', 'jnylen']
  spec.email         = ['me@jnylen.nu']

  spec.summary       = %q{A Sequel plugin that logs changes made to an audited model, including who created, updated and destroyed the record, and what was changed and when the change was made.}
  spec.description   = %q{A Sequel plugin that logs changes made to an audited model, including who created, updated and destroyed the record, and what was changed and when the change was made. This plugin provides model auditing (a.k.a: record versioning) for DB scenarios when DB triggers are not possible. (ie: on a web app on Heroku).}
  spec.homepage      = 'https://github.com/jnylen/sequel_audited'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'sequel', '>=4.0.0', '<6'
  spec.add_runtime_dependency 'sequel_polymorphic', '>= 0.3.1'

  spec.add_development_dependency 'minitest', '~> 5.8'
  spec.add_development_dependency 'minitest-hooks', '~> 1.2'
  spec.add_development_dependency 'sqlite3', '~> 1.3'
  spec.add_development_dependency 'simplecov', '~> 0.10'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'dotenv'

end
