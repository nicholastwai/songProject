require_relative 'boot'

require 'rails/all'

#require 'rspotify'
#RSpotify::authenticate(" a2f62fa1d6764016a0e2ef1f8d6f0428", "")

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SongProject
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.spotify_client_id = ENV['SPOTIFY_CLIENT_ID']
    config.spotify_client_secret = ENV['SPOTIFY_CLIENT_SECRET']
  end
end
