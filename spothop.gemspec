$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "spothop"
  s.version     = IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.0.1'
  s.authors     = ["Mike Juarez"]
  s.email       = ["mikejuarez@gmail.com"]
  s.homepage    = "http://www.github.com/mjuarez"
  s.summary     = "spothop"
  s.description = %q{Returns price history for spot instance type}
  s.license     = "MIT"

  s.files       = ['lib/spothop.rb']

  s.add_runtime_dependency "aws-sdk", '~> 2'
end