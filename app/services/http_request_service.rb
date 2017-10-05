class HttpRequestService
  attr_accessor :client

  def initialize()
    @client = HTTParty
  end

  # This is a GET request so I named it get
  def get(url)
    resp = client.get(url)
    resp
  end

end
