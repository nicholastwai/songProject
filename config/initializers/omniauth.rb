=begin

require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "a2f62fa1d6764016a0e2ef1f8d6f0428", "499ad7d75976492c94d5c7bff8288ef5", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end

=end