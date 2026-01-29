class Pexels
  include HTTParty
  base_uri "https://api.pexels.com/v1"
  headers Authorization: ENV["pusher_app_key"]
  def request_collection(id)
    self.class.get("/collections/#{id}")
  end
end
