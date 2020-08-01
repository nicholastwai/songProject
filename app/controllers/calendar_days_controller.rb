class CalendarDaysController < ApplicationController
    def show
        @calendar_day = CalendarDay.find(params[:id])
    end
end

