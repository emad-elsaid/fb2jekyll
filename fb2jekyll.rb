require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require_relative 'lib/install'
require_relative 'lib/clean'

class Fb2Jekyll < Thor
  include Install
  include Clean
end

Fb2Jekyll.start ARGV
