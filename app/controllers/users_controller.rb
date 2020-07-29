class UsersController < ApplicationController
    def index
        @calendars = Calendar.all
    end
end

