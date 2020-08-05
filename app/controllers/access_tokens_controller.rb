class AccessTokensController < ApplicationController
    def create
        puts params[:code]

        #making POST request for access and refresh tokens
        token_info = HTTParty.post('https://accounts.spotify.com/api/token', body: {
        grant_type: 'authorization_code',
        code: params[:code],
        redirect_uri: 'http://localhost:3000/access_tokens',
        client_id: Rails.application.config.spotify_client_id,
        client_secret: Rails.application.config.spotify_client_secret})

        puts "HERES THE TOKEN HASH"
        token_hash = token_info.parsed_response
        puts token_hash

        #making GET request for user information using access token
        user_info = HTTParty.get('https://api.spotify.com/v1/me', headers:{
            "Authorization" => 'Bearer ' + token_info["access_token"]
        })

        puts 'HERES THE USER HASH'
        user_hash = user_info.parsed_response
        puts user_hash

        #sets user equal to a user object with that id, if the user does not exist, one is created
        user = User.where(:spotify_id => user_hash["id"]).first
        if user.nil?
            # creating new user
            user = User.new({
                :email => user_hash["email"],
                :spotify_id => user_hash["id"]
            })
            user.save!
            # create new token associated with the user
            user.create_token(token_hash)
            existing_user = user
        end
            
        redirect_to 'http://localhost:3000/users/index'

    end
end

