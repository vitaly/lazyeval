(in /Volumes/ast/playground/lazyeval)
Gem::Specification.new do |s|
  s.name = %q{lazyeval}
  s.version = "0.0.2"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Vitaly Kushner"]
  s.date = %q{2008-05-25}
  s.description = %q{A very simple lazy evaluation for Ruby}
  s.email = %q{vitaly at astrails dot com}
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "README.txt", "website/index.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "README.txt", "Rakefile", "config/hoe.rb", "config/requirements.rb", "lib/lazyeval.rb", "lib/lazyeval/version.rb", "log/debug.log", "script/destroy", "script/generate", "script/txt2html", "setup.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/website.rake", "test/test_helper.rb", "test/test_lazyeval.rb", "website/index.html", "website/index.txt", "website/javascripts/rounded_corners_lite.inc.js", "website/stylesheets/screen.css", "website/template.rhtml"]
  s.has_rdoc = true
  s.homepage = %q{http://lazyeval.rubyforge.org}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{lazyeval}
  s.rubygems_version = %q{1.0.1}
  s.summary = %q{A very simple lazy evaluation for Ruby}
  s.test_files = ["test/test_helper.rb", "test/test_lazyeval.rb"]
end
