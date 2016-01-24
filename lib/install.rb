require_relative 'adapters/facebook'
require_relative 'adapters/github'
require_relative 'config'

module Install
  def self.included(klass)
    klass.class_eval do

      desc "install", "go through the process of aquiring your credentials"
      def install
        fb_client = Facebook.new
        gh_client = Github.new

        config = Config.new({
            facebook: fb_client.install,
            github: gh_client.install
          })

        config.save
      end

    end
  end
end
