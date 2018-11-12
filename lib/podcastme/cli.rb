class CLI
  podcast_titles = []
  def run
    puts "welcome to podcastme: find your next podcast"
  end

  html = open('https://www.stitcher.com/stitcher-list/all-podcasts-top-shows')

  doc = Nokogiri::HTML(html)

    doc.css(".stitcher-list tr")
      .each do |podcast|
        title = podcast.css(".sl-showName").text
        genre = podcast.css(".sl-category").text
        rank = podcast.css(".sl-rank").text
        url = title = podcast.css(".sl-showName a href")
        podcast_titles << title
        podcast_genres << genre
        podcast_ranks << rank
        podcast_url << url 
      end

      podcast_titles.each do |title|
        puts "#{title}"
        puts
      end

end
