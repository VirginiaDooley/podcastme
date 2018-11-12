class CLI
  podcast_titles = []
  podcast_summaries = []
  podcast_urls = []


  def run
    puts "welcome to podcastme: find your next podcast"


  html = open('https://www.vulture.com/2018/10/best-podcasts-2018-so-far.html')
  doc = Nokogiri::HTML(html)
  binding.pry

    doc.css(".content").each do |podcast|
      title = podcast.css(".clay-subheader").text.strip
      summary = podcast.css(".clay-paragraph").text
      url = podcast.css(".a href")
      podcast_titles << title
      podcast_summaries << summary
      podcast_urls << url
    end
      #
    podcast_titles.each do |title|
      puts "#{title}".chomp
      puts "#{summary}".chomp
      puts "#{url}".chomp
    end
  end

end
