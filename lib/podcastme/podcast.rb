module Podcastme
  class Podcast
    attr_accessor :title, :producer, :url, :summary

    def initialize(title, producer, url, summary)
      #setting properties
      @title = title
      @producer = producer
      @url = url
      @summary = summary
    end

  end
end
