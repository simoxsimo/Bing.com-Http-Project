require 'rest-client'

class Binghttp
  attr_accessor :query
  def initialize()
    @query = ''
  end

  def query_transform()
    query_get
    @query = @query.downcase.tr(' ', '+')
  end

  def query_get()
    puts 'What are you Searching for?'
    @query = gets.chomp
  end
end

# search = Binghttp.new
# puts search.query_transform
