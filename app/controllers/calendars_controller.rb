class CalendarsController < ApplicationController
    def show
    end

    def new
        @calendar = Calendar.new
    end

    def create 
        @calendar = Calendar.new(calendars_param)
        if @calendar.save
            redirect_to index_users_path
        else 
            redirect_to new_calendar_path
        end
    end

    private
        def calendar_params
            params.require(:calendar).permit(:name)
        end
end
