 class Scraper

  def self.scrape_podcast
    #class method to open the following url using the required URI and nokogiri

    html = open('https://www.vulture.com/2018/10/best-podcasts-2018-so-far.html')
    #local variable captures results of the scrape
    doc = Nokogiri::HTML(html)
    #parses through the scrape/variable for the css block that contains the desired data
    doc.css(".content").each do |podcast_doc|
      #finds the title of the podcast. converts it to text, strips it of any special characters and splits it from the producer part of the string
      title = podcast_doc.css(".clay-subheader").text.strip.split(" (")[0]
      #need remove that pesky paren
      producer = podcast_doc.css(".clay-subheader").text.strip.split("(" )[1]
      #finds the value of the podcast url and stores in a local variable
      url = podcast_doc.css("a").attr("href").value
      #finds the summary of the podcast and converts to text
      summary = podcast_doc.css(".clay-paragraph").text
      #passes the above variables to a new instance of Podcast 
      Podcast.new(title, producer, url, summary)

    end
  end

end
