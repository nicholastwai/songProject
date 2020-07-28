class UserController < ApplicationController
    def index
        @calendars = Calendar.all
    end
end

