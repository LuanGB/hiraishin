Gem::Specification.new do |spec|
  spec.name          = 'hiraishin'
  spec.version       = '0.0.1'
  spec.authors       = ['Luan Gonçalves Barbosa']
  spec.email         = ['luan.goncbs@gmail.com']
  spec.summary       = 'A simple gem that adds executable and library for adding shortcuts to programs'
  spec.homepage      = 'https://github.com/LuanGB/hiraishin'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
