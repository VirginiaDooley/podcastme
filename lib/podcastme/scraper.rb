 class Scraper

  def self.scrape_podcast

    html = open('https://www.vulture.com/2018/10/best-podcasts-2018-so-far.html')
    doc = Nokogiri::HTML(html)

    doc.css(".content").each do |podcast_doc|

      title = podcast_doc.css(".clay-subheader").text.strip
      url = podcast_doc.css("a").attr("href").value

      Podcast.new(title, url)
        # summary = podcast.css(".clay-paragraph").text

        # podcast_titles << title
        # podcast_summaries << summary
        # podcast_urls << url
    end
  end
end
