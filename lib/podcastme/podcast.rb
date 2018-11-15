class Podcast
  attr_accessor :title, :producer, :url, :summary

  @@all = []

  def self.find(index)
    #find by index number and convert from string to integer. - 1 bc count starts at 0.
    @@all[index.to_i-1]
  end

  def initialize(title, producer, url, summary)
    #setting properties
    @title = title
    @producer = producer
    @url = url
    @summary = summary
    #all instances of Podcast will be stored in a class variable
    @@all << self
  end

  def self.all
    #all Podcasts will be called in the @@all class variable 
    @@all
  end

end
