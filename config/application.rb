require_relative 'boot'

require 'rails/all'

#require 'rspotify'
#RSpotify::authenticate(" a2f62fa1d6764016a0e2ef1f8d6f0428", "499ad7d75976492c94d5c7bff8288ef5")

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
  end
end
