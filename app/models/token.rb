class Token < ApplicationRecord
    validates :access_token, presence: true
    validates :refresh_token, presence: true
end
