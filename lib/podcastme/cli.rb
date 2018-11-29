class CLI

  def run

    Scraper.scrape_podcast
      puts "Welcome to PodcastMe: Discover your next podcast from the best of 2018".colorize(:white).on_blue

      Podcast.all.each.with_index(1) do |podcast, i|
        puts "#{i}. Title: #{podcast.title}".chomp
        puts "Created by #{podcast.producer}".chomp
      end
        select_podcast_by_index
      end
  end

  def select_podcast_by_index
    puts "Choose the number (1-16) of the podcast would you like to learn more about. Type 'list' to see choices again. Type 'exit' to quit.".blue.bold

    input = $stdin.gets.chomp

    podcast_object = Podcast.find(input)

    if input.to_i.between?(1, 16)
      puts "You chose #{podcast_object.title}".green.bold
      puts "What's it all about?".chomp
      puts "#{podcast_object.summary}".chomp
      puts "Find it here: #{podcast_object.url}".chomp
      select_podcast_by_index
    elsif input == 'list'
      run
    elsif input == "exit"
      puts "Happy Podcasting!".blue.bold
      exit!
    else
      puts "Invalid choice."
      select_podcast_by_index
  end

end
