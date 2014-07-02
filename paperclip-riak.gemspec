# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "paperclip-riak"
  s.version     = "0.0.3"
  s.authors     = ["Nugroho Herucahyono"]
  s.email       = ["xinuc@xinuc.org"]
  s.homepage    = "https://github.com/xinuc/paperclip-riak"
  s.summary     = %q{Use riak as paperclip file storage}
  s.description = %q{Paperclip storage module that allow us to store uploaded files to Riak}

  s.license     = 'MIT'

  s.rubyforge_project = "paperclip-riak"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

   s.add_runtime_dependency "paperclip", ">= 2.7"
   s.add_runtime_dependency "riak-client", ">= 1.1"
end
