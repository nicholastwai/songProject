class CalendarsController < ApplicationController
    def show
        @calendar = Calendar.find(params[:id])
    end

    def new
        @calendar = Calendar.new
    end

    def create 
        @calendar = Calendar.new(calendar_params)
        if @calendar.save
            redirect_to users_index_path
        else 
            redirect_to new_calendar_path, flash.alert = "Naming failed, try again." 
        end
    end

    private
        def calendar_params
            params.require(:calendar).permit(:name)
        end
end
