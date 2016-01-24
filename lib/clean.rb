require_relative 'adapters/facebook'
require_relative 'adapters/github'
require_relative 'config'

module Clean
  def self.included(klass)
    klass.class_eval do

      desc "clean", "remove all files and configurations."
      def clean
        Facebook.new.clean
        Github.new.clean
        Config.new.clean
      end

    end
  end
end
