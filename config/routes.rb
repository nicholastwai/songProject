Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'welcome/home'
  #post https://accounts.spotify.com/api/token&grant_type="authorization_code"&code=AQBqF_eDNbYfiUUaTagTQCXZQj4iG1WU5OQ3KCVxo4e8VzPu7Vjis1cU6HxlM1xh1PQCdAaVqFB4p6kEjiPk8P-LiqYu0AljKraZ9-UzOD97XO-DhEb_F6HjOkN5o9skq6pk86RikDpQHehiqFHKRhSK2vbdyNzozg05X-v3Qh3kGXUMteLDS-_PoKBsTn6E2Qt2P6NhNu-i1Va5vSD2DDuYnkC-qniabMo&redirect_uri=http://localhost:3000/welcome/home
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

#https://accounts.spotify.com/api/token
#grant_type="authorization_code"
#code=AQBqF_eDNbYfiUUaTagTQCXZQj4iG1WU5OQ3KCVxo4e8VzPu7Vjis1cU6HxlM1xh1PQCdAaVqFB4p6kEjiPk8P-LiqYu0AljKraZ9-UzOD97XO-DhEb_F6HjOkN5o9skq6pk86RikDpQHehiqFHKRhSK2vbdyNzozg05X-v3Qh3kGXUMteLDS-_PoKBsTn6E2Qt2P6NhNu-i1Va5vSD2DDuYnkC-qniabMo
#redirect_uri=http://localhost:3000/welcome/home

#curl -d grant_type="authorization_code" -d redirect_uri=http://localhost:3000/welcome/home -d client_id=<client id here> -d client_secret=<client secret here> -d code=AQBHU8InznI01jjbtnKCz9g3vNBlGoj6t726LrVSJrTum08FzNTuE2T5f-PwfF8vY4colWb8DwD-lrtblXv01b6SGhScNleWe-PZT2WIJCPXuP7TnflG8LofCS3UXu_V_sYhvusWRLc7mpwsTnu76-B7OA7BGyqvSa9Hv-SzNs75IXBJa4XubUCnpidbJ70U8E5yYVg3A1Hd4JG-LxQxMI0nOCF3wz_JcNQ https://accounts.spotify.com/api/token
#{"access_token":"BQBQN9WB-JUqPgOY51Ir8uH3PmFKjQI5dn5b6qPJih78_1gKADSNsI_v6S3c9UJDDOSpPCZ_424FbO4bWb5Pd7pi5cdNXTNVwHrcuUvtjI5VSlPVoFzfjKjfpOkLwB6JZpKfxg49ShbueMh1GQz9ENAL3T7SBIfWAaH68EWLdhp8ffmud2h6og","token_type":"Bearer","expires_in":3600,"refresh_token":"AQB9q3DtqfaB3gn2r0HljNG16xXIHz4lv3LOJQj1oKy4H_8U8DQVbYNMP05OM0Q2mVaVelALgWXIA7pVtx3XqDjiUb8ewD-SYljPkm7Nnwrd5kMVeylARWAtqgJRLfenBF4","scope":"user-read-email user-read-private"}%