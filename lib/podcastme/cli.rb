class CLI

  def run
    puts "Welcome to PodcastMe: Discover your next podcast from the best of 2018"

    Scraper.scrape_podcast

    Podcast.all.each do |podcast|
      puts "#{podcast.title}".chomp
      puts "Find it here:#{podcast.url}".chomp
      # puts "#{summary}".chomp
    end

  end

end
