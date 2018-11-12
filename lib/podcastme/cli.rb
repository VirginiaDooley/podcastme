class CLI
  podcast_titles = []
  def run
    puts "welcome to podcastme: find your next podcast"
  end

  html = open('https://www.vulture.com/2018/10/best-podcasts-2018-so-far.html')

  doc = Nokogiri::HTML(html)

    doc.css(".content")
      .each do |podcast|
        title = podcast.css(".clay-subheader").text.strip
        #need to seperate producers from titles
        podcast_titles << title
      end

      podcast_titles.each do |title|
        puts "#{title}"
      end

end
