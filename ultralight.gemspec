Gem::Specification.new do |spec|
    spec.name        = 'ultralight'
    spec.version     = '1.0.1'
    spec.authors     = ['Kotet']
    spec.email       = ['kotet0418@gmail.com']
    spec.summary     = 'Lightweight responsive Jekyll theme'
    spec.description = 'Super-lightweight responsive super Jekyll theme.'
    spec.homepage    = 'https://github.com/kotet/ultralight'
    spec.license     = 'MIT'

    spec.files = `git ls-files -z`.split("\x0").select do |f|
        f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
    end

    spec.add_dependency 'jekyll', '~> 3.9.5'
    spec.add_dependency 'jekyll-sitemap', '~> 1.4'
    spec.add_dependency 'jekyll-feed', '~> 0.17'

    spec.add_development_dependency 'bundler'
    spec.add_development_dependency 'rake'
    spec.add_development_dependency 'github-pages'
    spec.add_development_dependency 'webrick'

    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = spec.homepage
end
