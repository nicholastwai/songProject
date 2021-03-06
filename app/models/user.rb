class User < ApplicationRecord
    has_one :token
    has_many :memberships
    has_many :calendars, through: :memberships

    def rspotify
        RSpotify::User.new({
            'id' => spotify_id,
            'email' => email,
            'credentials' => {
                'refresh_token' => token.refresh_token,
                'token' => token.access_token,
                'token_type' => token.token_type,
                'scope' => token.scope,
            }, 
        })
    end
end
