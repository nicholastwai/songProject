class Membership < ApplicationRecord
    belongs_to :user
    belongs_to :calendar
end
