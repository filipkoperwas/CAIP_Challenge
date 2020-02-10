class YoutubeInteractor

  KEY = ENV["youtube_api_key"]
  BASE_URI = 'https://www.googleapis.com/youtube/v3/'.freeze

  def initialize(query = '', ids = [])
    @q = query
    @ids = ids
  end

  def fields
    'snippet, statistics'
  end

  def get_details
    _url = "#{BASE_URI}videos?part=#{fields}&key=#{KEY}&id=#{@ids.join(',')}"
    res = HTTParty.get(_url).body

    JSON.parse(res)
  end

  def search
    _url = "#{BASE_URI}search?part=snippet&key=#{KEY}&q=#{@q}&maxResults=5&type=video"
    res = HTTParty.get(_url).body

    JSON.parse(res)
  end

end
