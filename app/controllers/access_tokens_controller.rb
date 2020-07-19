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

        #making GET request for user information using access token
        user_info = HTTParty.get('https://api.spotify.com/v1/me', headers:{
            "Authorization" => 'Bearer ' + token_info["access_token"]
        })

        puts "HERES THE TOKEN HASH"
        token_hash = token_info.parsed_response
        puts token_hash

        puts 'HERES THE USER HASH'
        user_hash = user_info.parsed_response
        puts user_hash

        user = User.where(:spotify_id => user_hash["id"]).first
        if user.nil?
            # creat new user
            user = User.new({
                :email => user_hash["email"],
                :spotify_id => user_hash["id"]
            })
            user.save!
            # create new token associated with the user
            user.create_token(token_hash)
            existing_user = user
        end
        # #saving data about access and refresh tokens to database
        # @token = Token.new(token_hash)
        # @token.save

        # #changing 'access_token' key to 'token' so RestClient gem recognizes it for API calls
        # new_hash = {'token' => token_hash['access_token']}
        # new_hash.merge!(token_hash.except!('access_token'))
        # options = {'credentials' => new_hash}
        # options.merge!(user_hash)
            
        # puts options

        #saving user info to database
        #rememember to perform migration, add columns for user#@user = User.new(user_hash)
        #@user.save  

        # RSpotify::authenticate('a2f62fa1d6764016a0e2ef1f8d6f0428','49ad7d75976492c94d5c7bff8288ef5')
        # options = {}
        # spotify_user = RSpotify::User.new(options)    
        # puts spotify_user.top_artists
        # puts spotify_user.email
        head :ok
    end
end

