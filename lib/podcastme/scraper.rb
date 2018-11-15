 class Scraper

  def self.scrape_podcast

    html = open('https://www.vulture.com/2018/10/best-podcasts-2018-so-far.html')
    doc = Nokogiri::HTML(html)

    doc.css(".content").each do |podcast_doc|

      title = podcast_doc.css(".clay-subheader").text.strip.split(" (")[0]
      producer = podcast_doc.css(".clay-subheader").text.strip.split("(" )[1]
      url = podcast_doc.css("a").attr("href").value
      summary = podcast_doc.css(".clay-paragraph").text

      Podcast.new(title, producer, url, summary)
    end
  end
end
