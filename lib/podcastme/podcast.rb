class Podcast
  attr_accessor :title, :url, :summary

  @@all = []

  def initialize(title, url, summary)

    @title = title
    @url = url
    @summary = summary
    @@all << self
  end

  def self.all
    @@all
  end

end
