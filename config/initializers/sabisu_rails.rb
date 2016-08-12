# Use this module to configure the sabisu available options

SabisuRails.setup do |config|

  # Base uri for posting the 
  # config.base_api_uri = nil
  config.base_api_uri = 'api.marketplaceapi.dev'

  config.api_headers = { "Accept" => "application/vnd.marketplace.v1" }
  config.resources = [:users]
  config.default_resource = :users

end
