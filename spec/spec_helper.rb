# Helper file to setup our tests/specs for this program.
# NO NEED TO EDIT

require 'pry'
require 'rspec'

def safely_require(file)
  require_relative file
rescue LoadError
  # ignore
end

safely_require '../lib/unit'
safely_require '../lib/light_unit'
safely_require '../lib/siege_unit'
safely_require '../lib/building'
safely_require '../lib/footman'
safely_require '../lib/siege_engine'
safely_require '../lib/barracks'
safely_require '../lib/peasant'



