# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{riot-gear}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin 'Gus' Knowlden"]
  s.date = %q{2010-06-23}
  s.description = %q{Riot + HTTParty smoke testing framework. You'd use it for integration testing with real HTTP requests and responses}
  s.email = %q{gus@gusg.us}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     "README.md",
     "Rakefile",
     "VERSION",
     "lib/riot/gear.rb",
     "lib/riot/gear/context.rb",
     "lib/riot/gear/context/asserts_header.rb",
     "lib/riot/gear/context/asserts_json.rb",
     "lib/riot/gear/context/asserts_status.rb",
     "lib/riot/gear/context/http.rb",
     "lib/riot/gear/middleware.rb",
     "lib/riot/gear/middleware/riotparty.rb",
     "riot-gear.gemspec"
  ]
  s.homepage = %q{http://github.com/thumblemonks/riot-gear}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Riot + HTTParty smoke testing framework}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<riot>, [">= 0"])
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
    else
      s.add_dependency(%q<riot>, [">= 0"])
      s.add_dependency(%q<httparty>, [">= 0"])
    end
  else
    s.add_dependency(%q<riot>, [">= 0"])
    s.add_dependency(%q<httparty>, [">= 0"])
  end
end

