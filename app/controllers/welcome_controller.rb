require 'pp'

class WelcomeController < ApplicationController
  def index
  end

  # def retrieveToken
  #   include HTTParty
  #   base_uri 'http://localhost:3000/welcome/home'
  #   HTTParty.post('https://accounts.spotify.com/api/token', body: {
  #     grant_type = 'authorization_code',
  #     code = 'AQB6Jsnn3O6yPVLDeqDlRdoA7r-RD2kitqj8mg8oOW9jyP_gFvzHSsTmSWrPzrOICcMgdSNqzxllCH1ny2-Y3x9l4QReF-cy9c-NXYmrku64AaW0oFcKlChrs_Whwf90zcBncOeUzIDQMaMiYNZiEz8Msg1aDwIFbqxwT9BZGSHTL8P3UP1BXgXmEqRwPCt_V8cQn-LLf2iBvRVmkvLAGADPBLpKxc2FNkM',
  #     redirect_uri = 'http://localhost:3000/welcome/home',
  #     client_id = 'a2f62fa1d6764016a0e2ef1f8d6f0428',
  #     client_secret = '499ad7d75976492c94d5c7bff8288ef5'
  #   })
  # end
end

