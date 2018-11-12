 class Scraper

  def self.scrape_podcast

    html = open('https://www.vulture.com/2018/10/best-podcasts-2018-so-far.html')
    doc = Nokogiri::HTML(html)

    doc.css(".content").each do |podcast_doc|

      title = podcast_doc.css(".clay-subheader").text.strip

      Podcast.new(title)
        # summary = podcast.css(".clay-paragraph").text
        # url = podcast.css("a href")
        # podcast_titles << title
        # podcast_summaries << summary
        # podcast_urls << url
    end
  end
end
