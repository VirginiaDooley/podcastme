class CLI

  def run
    puts "welcome to podcastme: find your next podcast"
  end

  html = open('https://www.vulture.com/2018/10/best-podcasts-2018-so-far.html')

  doc = Nokogiri::HTML(html)
  binding.pry


    doc.css(".content")
      .each do |podcast|
      end

end
