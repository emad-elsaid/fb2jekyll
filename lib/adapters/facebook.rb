class Facebook
  EXPLORER = 'https://developers.facebook.com/tools/explorer'
  def install
    puts 'Please go to this URL and copy access token to enable us read your posts: '
    puts EXPLORER
    print "Access token: "
    STDIN.gets.chomp
  end

  def clean
    # do nothing
  end
end
