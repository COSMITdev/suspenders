Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  s.name              = 'suspension'
  s.version           = '0.0.1'
  s.date              = '2010-04-07'

  s.summary     = "Generate a Rails app using thoughtbot's best practices."
  s.description = IO.read('README.md')

  s.authors  = ["Mike Burns"]
  s.email    = 'mburns@thoughtbot.com'
  s.homepage = 'http://github.com/mike-burns/suspension'

  s.executables = ["suspension"]
  s.default_executable = 'suspension'

  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md LICENSE]

  s.add_development_dependency('cucumber', [">= 0.6.2"])

  # = MANIFEST =
  s.files = %w[
    LICENSE
    README.md
    Rakefile
    bin/suspension
    features/rake_clean.feature
    features/step_definitions/shell.rb
    features/support/env.rb
    suspension.gemspec
  ]
  # = MANIFEST =

  s.test_files = s.files.select {|path| path =~ /^features/ }
end