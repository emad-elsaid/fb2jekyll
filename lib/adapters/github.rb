class Github
  REPOSITORY_PATH = File.expand_path('~/.import_fb_to_jekyll')

  def install
    print 'Jekyll repository clone url: '
    repository_url = STDIN.gets.chomp
    puts 'Cloning repository...'
    clone repository_url
  end

  def clone(url)
    repository = Git.clone(url, REPOSITORY_PATH, log: Logger.new(STDOUT), recursive: true )
  end

  def clean
    system "rm -rf #{REPOSITORY_PATH}"
  end
end
