require "orly/book/version"
require 'net/http'

module Orly
  class Book
    def initialize(filename="orly", options={})
      @filename = filename
      @title = URI.encode(options[:title]) || "%20"
      @top_text = URI.encode(options[:top_text]) || "%20"
      @author = URI.encode(options[:author]) || "%20"
      @theme = options[:theme] || rand(17)
      @animal = options[:animal] || rand(40)+1
      generate
    end

    def generate
      puts "Starting"
      # uri = URI("http://orly-appstore.herokuapp.com
      Net::HTTP.start("orly-appstore.herokuapp.com") do |http|
        resp = http.get("/generate?title=#{@title}&top_text=#{@top_text}&author=#{@author}&theme=#{@theme}&image_code=#{@animal}")
        open("./#{@filename}.png", "wb") do |file|
          file.write(resp.body)
        end
      end
      puts "Done!"
    end
  end
end
