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
    puts "Choose the number (1-16) of the podcast would you like to learn more about:"
    #user enters a podcast.title
    input = gets.chomp
    #create a find object method
    podcast_object = Podcast.all[input.to_i - 1]
    #if the user enters a valid podcast index, puts related podcast.url
    #abstract all of this if stmt
    if podcast_object
      puts "What's it all about? #{podcast_object.summary}"
      puts "Find it here: #{podcast_object.url}".chomp
      # loop
    else
      puts "Invalid choice."
      question
    end

  end

  # def loop
  #   puts "Would you like to explore another podcast? Type 'Y' or 'N'"
  #   input = gets.chomp
  #   if input == "Y"
  #     question
  #   if input == "N"
  #     puts "Thanks for exploring PodcastMe."
  #   else
  #     puts "Invalid choice. Type 'Y' or 'N'"
  # end
end
