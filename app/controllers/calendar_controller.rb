class CalendarController < ApplicationController
    def show
    end

    def new
        @calendar = Calendar.new
    end

    def create 
        @calendar = Calendar.new(params[:calendar])
        if @calendar.save
            redirect_to index_user_path
        else 
            redirect_to new_calendar_path
        end
    end
end
