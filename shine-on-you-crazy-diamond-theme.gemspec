# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name     = 'shine-on-you-crazy-diamond-theme'
  spec.version  = '0.5.0'
  spec.authors  = ['ramonsantos']
  spec.email    = ['ramonsantos.pe@gmail.com']
  spec.summary  = 'Theme from website https://ramonsantos.github.io/'
  spec.homepage = 'https://ramonsantos.github.io/'
  spec.license  = 'MIT'
  spec.files    = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.metadata['plugin_type'] = 'theme'

  spec.add_runtime_dependency 'jekyll', '~> 4.0'
  spec.add_runtime_dependency 'jekyll-archives', '~> 2.2', '>= 2.2.1'
  spec.add_runtime_dependency 'jekyll-feed', '~> 0.15'
  spec.add_runtime_dependency 'jekyll-paginate-v2', '~> 3.0'
  spec.add_runtime_dependency 'jekyll-seo-tag', '~> 2.6', '>= 2.6.1'
  spec.add_runtime_dependency 'jekyll-target-blank', '~> 2.0'

  spec.add_development_dependency 'bundler'
end
