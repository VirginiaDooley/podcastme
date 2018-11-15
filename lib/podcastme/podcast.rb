class Podcast
  attr_accessor :title, :producer, :url, :summary

  @@all = []

  def self.find(index)
    @@all[index.to_i-1]
  end

  def initialize(title, producer, url, summary)
    #setting properties
    @title = title
    @producer = producer
    @url = url
    @summary = summary
    @@all << self
  end

  def self.all
    @@all
  end

end
