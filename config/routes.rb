Rails.application.routes.draw do
  root 'welcome#index'
  get 'access_tokens', to: 'access_tokens#create'
end

#https://accounts.spotify.com/api/token
#grant_type="authorization_code"
#code=AQBqF_eDNbYfiUUaTagTQCXZQj4iG1WU5OQ3KCVxo4e8VzPu7Vjis1cU6HxlM1xh1PQCdAaVqFB4p6kEjiPk8P-LiqYu0AljKraZ9-UzOD97XO-DhEb_F6HjOkN5o9skq6pk86RikDpQHehiqFHKRhSK2vbdyNzozg05X-v3Qh3kGXUMteLDS-_PoKBsTn6E2Qt2P6NhNu-i1Va5vSD2DDuYnkC-qniabMo
#redirect_uri=http://localhost:3000/welcome/home

#curl -d grant_type="authorization_code" -d redirect_uri=http://localhost:3000/welcome/home -d client_id="a2f62fa1d6764016a0e2ef1f8d6f0428" -d client_secret="499ad7d75976492c94d5c7bff8288ef5" -d code=AQB6Jsnn3O6yPVLDeqDlRdoA7r-RD2kitqj8mg8oOW9jyP_gFvzHSsTmSWrPzrOICcMgdSNqzxllCH1ny2-Y3x9l4QReF-cy9c-NXYmrku64AaW0oFcKlChrs_Whwf90zcBncOeUzIDQMaMiYNZiEz8Msg1aDwIFbqxwT9BZGSHTL8P3UP1BXgXmEqRwPCt_V8cQn-LLf2iBvRVmkvLAGADPBLpKxc2FNkM https://accounts.spotify.com/api/token
#{{"access_token":"BQCbyhI5N3h4l1fh0qdoJ8qjvONRWgMfJiPrBXN6S6R2kj4dAgkFs3Ka4Zgqi_DXocZd2leJUnQT6wKbQyOVwfqt5jHB8ycPTMBurZYrN0t16hdDQtTodee_TQfkAaLLnE8KhGF9qYM9iDlroM1Yp2YumR4MZmQ4OmiCUMj-xoZehxUa9hoLjQ","token_type":"Bearer","expires_in":3600,"refresh_token":"AQDj-ziojDe4jqBftwOdX3T5AQPjch5bftc3PtAdi0jhpSbgpCUtBAkTL42xW8zinhVIqQQxMjPZ_8ocjIaFGIYyWWehD6gnu5_fwroXo5el7kSKbLu0IyUHfx_MYdPUic4","scope":"user-read-email user-read-private"}%

#post https://accounts.spotify.com/api/token&grant_type="authorization_code"&code=AQBqF_eDNbYfiUUaTagTQCXZQj4iG1WU5OQ3KCVxo4e8VzPu7Vjis1cU6HxlM1xh1PQCdAaVqFB4p6kEjiPk8P-LiqYu0AljKraZ9-UzOD97XO-DhEb_F6HjOkN5o9skq6pk86RikDpQHehiqFHKRhSK2vbdyNzozg05X-v3Qh3kGXUMteLDS-_PoKBsTn6E2Qt2P6NhNu-i1Va5vSD2DDuYnkC-qniabMo&redirect_uri=http://localhost:3000/welcome/home
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html