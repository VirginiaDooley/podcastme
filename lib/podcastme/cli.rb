class CLI

  def run
    Scraper.scrape_podcast

    puts "Welcome to PodcastMe: Discover your next podcast from the best of 2018"

    Podcast.all.each.with_index(1) do |podcast, i|
      puts "#{i}. Title: #{podcast.title}".chomp
      puts "Created by #{podcast.producer}".chomp
    end
    question
    end
  end

  def question
    puts "Choose the number (1-16) of the podcast would you like to learn more about:"

    input = gets.chomp

    podcast_object = Podcast.all[input.to_i - 1]

    #abstract all of this if stmt
    if podcast_object
      #currently an input of a string is returning a result not an error message
      puts "You chose #{podcast_object.title}"
      puts "What's it all about?".chomp
      puts "#{podcast_object.summary}".chomp
      puts "Find it here: #{podcast_object.url}".chomp
      loop
    else
      puts "Invalid choice."
      question
      loop
    end
  end

  def loop
    puts "Would you like to explore another podcast? Type 'Y' or 'N'"
      input = gets.chomp
      if input == "Y"
        question
      elsif input == "N"
        puts "Thanks for exploring PodcastMe."
      else
        puts "Invalid choice. Type 'Y' or 'N'"
        loop
  end
end
