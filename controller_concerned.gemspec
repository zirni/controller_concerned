# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "controller_concerned/version"

Gem::Specification.new do |s|
  s.name        = "controller_concerned"
  s.version     = ControllerConcerned::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matthias Zirnstein"]
  s.email       = ["matthias.zirnstein@googlemail.com"]
  s.homepage    = "https://github.com/zirni/concerned_controller"
  s.summary     = %q{Organize your controller and place each action/functionality in a separate file}
  s.description = %q{}

  s.rubyforge_project = "controller_concerned"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
