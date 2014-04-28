class ApiCall < ActiveRecord::Base
  attr_accessible :call_time, :url, :result

  before_save :call_api

  def call_api
    self.url = "https://tapco.secure.force.com/DistributorLocator/services/apexrest/findnearby/post"
    apiResult = HTTParty.post(self.url, :body => {})
    self.result = apiResult.response.code
    self.call_time = Time.now
  end

end
