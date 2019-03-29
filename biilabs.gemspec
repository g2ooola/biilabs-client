
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "biilabs/version"

Gem::Specification.new do |spec|
  spec.name          = "biilabs-client"
  spec.version       = Biilabs::VERSION
  spec.authors       = ["gsx"]
  spec.email         = ["gsx@kdanmobile.com"]

  spec.date = '2019-03-27'
  spec.summary = 'A gem to work with "BiiLabs" Tangle.'
  spec.files = [
    'lib/biilabs.rb',
    'lib/biilabs/client.rb',
    'lib/biilabs/default_tryter.rb',
    'lib/biilabs/version.rb',
    'lib/biilabs/configuration.rb',
    'lib/biilabs/base.rb',
    'lib/biilabs/error.rb'
  ]
  spec.require_paths = %w(lib)
end
