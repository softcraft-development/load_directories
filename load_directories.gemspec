# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{load_directories}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Craig Walker"]
  s.date = %q{2009-10-03}
  s.description = %q{Recursively add directories to the Ruby $LOAD_PATH}
  s.email = ["craig@softcraft.ca"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/load_directories.rb", "script/console", "script/destroy", "script/generate", "test/test_directory_root/one/one.rb", "test/test_directory_root/one/one_one/one_one.rb", "test/test_directory_root/two/two.rb", "test/test_helper.rb", "test/test_load_directories.rb"]
  s.homepage = %q{http://github.com/#{github_username}/#{project_name}}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{load_directories}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Recursively add directories to the Ruby $LOAD_PATH}
  s.test_files = ["test/test_helper.rb", "test/test_load_directories.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
