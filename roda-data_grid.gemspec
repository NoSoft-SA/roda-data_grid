# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'roda/data_grid/version'

Gem::Specification.new do |spec|
  spec.name          = 'roda-data_grid'
  spec.version       = Roda::DataGrid::VERSION
  spec.authors       = ['James Silberbauer']
  spec.email         = ['jamessil@telkomsa.net']

  spec.summary       = 'Easily display data grids in Roda apps'
  spec.description   = 'Easily display data grids in Roda apps'
  spec.homepage      = 'https://github.com/JMT-SA'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'caxlsx'
  spec.add_dependency 'crossbeams-dataminer'
  spec.add_dependency 'crossbeams-layout'
  spec.add_dependency 'json'
  spec.add_dependency 'roda'

  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-doc'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'yard'
end
