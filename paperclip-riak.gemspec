# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "paperclip-riak"
  s.version     = "0.0.1"
  s.authors     = ["Nugroho Herucahyono"]
  s.email       = ["xinuc@xinuc.org"]
  s.homepage    = "https://github.com/xinuc/paperclip-riak"
  s.summary     = %q{Use riak as paperclip storage}
  s.description = %q{Use riak as paperclip storage}

  s.rubyforge_project = "paperclip-riak"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
   s.add_runtime_dependency "paperclip"
   s.add_runtime_dependency "riak-client"
end
