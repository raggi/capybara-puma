# -*- encoding: utf-8 -*-
Gem::Specification.new("capybara-puma", "1.0.1") do |gem|
  gem.authors       = ["James Tucker"]
  gem.email         = ["jftucker@gmail.com"]
  gem.description   = "A Capybara server replacement using the Puma webserver"
  gem.summary       = "Capybara.server =~ Puma::Server"
  gem.homepage      = "https://github.com/raggi/capybara-puma"

  if $0 =~ /gem/ # Do this on gem build, but ignore it for bundled gems.
    gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
    gem.files         = `git ls-files`.split("\n") - %w[capybara-puma.gemspec .gitignore]
    gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  end

  gem.add_dependency 'capybara'
  gem.add_dependency 'puma'
end
