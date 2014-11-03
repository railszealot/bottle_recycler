Gem::Specification.new do |s|
  s.name        = 'bottle_recycler'
  s.version     = '0.0.2'
  s.date        = '2014-11-03'
  s.summary     = "Bottle Recycler"
  s.description = "Efficient bottle recycling ROI calculator"
  s.authors     = ["Matthew Carriere"]
  s.email       = 'matthew.carriere@gmail.com'
  s.files       = ["lib/bottle_recycler.rb"]
  s.license     = 'MIT'
  s.executables << 'bottle_recycler'
  s.add_dependency('activesupport','~>4.0.0')
end