class Config
  FILE_PATH = File.expand_path('~/.import_fb_to_jekyll.yaml')

  attr_reader :config

  def initialize(config=nil)
    @config = config
  end

  def read
    @config = YAML::load_file FILE_PATH
  end

  def save
    File.write FILE_PATH, @config.to_yaml
  end

  def clean
    File.delete FILE_PATH
  end
end
