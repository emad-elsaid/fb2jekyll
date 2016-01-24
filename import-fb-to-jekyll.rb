require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require_relative 'lib/install'
require_relative 'lib/clean'

class ImportFbToJekyll < Thor
  include Install
  include Clean
end

ImportFbToJekyll.start ARGV
