# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name     = 'shine-on-you-crazy-diamond-theme'
  spec.version  = '0.1.4'
  spec.authors  = ['ramonsantos']
  spec.email    = ['ramonsantos.pe@gmail.com']
  spec.summary  = 'Theme from website https://ramonsantos.github.io/'
  spec.homepage = 'https://ramonsantos.github.io/'
  spec.license  = 'MIT'
  spec.files    = `git ls-files -z`.split("\x0").select { |f| f.match(/^(assets|_layouts|_includes|_sass|LICENSE|README)/i) }

  spec.add_runtime_dependency 'jekyll', '~> 4.0'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 13.0'
end
