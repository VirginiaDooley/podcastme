class CLI

  def run
    Scraper.scrape_podcast

    puts "Welcome to PodcastMe: Discover your next podcast from the best of 2018"

    Podcast.all.each.with_index(1) do |podcast, i|
      #separate title from producer with split and move produce into separate variable
      puts "#{i}. Title: #{podcast.title}".chomp
      #consider ruby truncate (research)
    end
    question
  end

  def question
    puts "Choose the number of the podcast would you like to learn more about:"
    #user enters a podcast.title
    input = gets.chomp
    #create a find object method
    podcast_object = Podcast.all[input.to_i - 1]
    #if the user enters a valid podcast index, puts related podcast.url
    #abstract all of this if stmt
    if podcast_object
      puts "What's it all about? #{podcast_object.summary}"
      puts "Find it here: #{podcast_object.url}".chomp

    #loop back to choose another after a successful entry or leave the programme
    else
      "Invalid choice. Please enter a number 1-15 to display the url of your chosen podcast."
      #question method
    end

  end

end
