require 'rest-client'

class Binghttp
  attr_accessor :query, :response
  def initialize()
    @query = ''
    @response = ''
  end

  def query_transform_search()
    query_get
    @query = @query.downcase.tr(' ', '+')
    search_get
  end

  private

  def query_get()
    puts 'What are you Searching for?'
    @query = gets.chomp
  end

  def search_get
    url = "https://www.bing.com/search?q=#{@query}"
    @response = RestClient.get url
  end
end

run = Binghttp.new
results = run.query_transform_search

# get code
puts results.code

# get header
puts results.headers

# get cookie
puts results.cookies

# get body
puts results.body
