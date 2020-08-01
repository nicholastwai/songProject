class CalendarsController < ApplicationController
    def show
        @calendar = Calendar.find(params[:id])
        @calendar_days = CalendarDay.all
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

    DAY_THEMES = ["Your go-to karaoke song", "The first song you ever purchased", "Song that reminds you of someone special", "Song you can't help but dance to", "Song by your favorite female artist", "Favorite Song from the 80's", "Song from a Movie", "Favorite Cover Song by Another Artist", "Songs that Remind You of Summer", "Song you Know Every Word to", "Song with a Color in the Title", "Song that Reminds you of Being a Teenager", "Favorite Power Ballad", "Song by your favorite male artist", "Song by a Band You Wish Were Still Together", "Song that Makes You Feel Motivated", "Favorite Song from a Musical", "Your Newest Favorite Song", "Song that Makes You Feel All the Feels", "The Ultimate Road Trip Song", "Song that Reminds you of a School Dance", "Song that Instantly Makes you Happy", "Favorite Song with a Name in the Title", "Favorite Song from the 90's", "Song Your Parents Always Played", "Song that Makes You Feel Relaxed", "Favorite Duet/Remix", "Your Most Played Song So Far this Year", "Song You Never Get Bored Of", "Your Guilty Pleasure Song"]

    def create_calendar_days
        DAY_THEMES.each do |day|
            @calendar_days = CalendarDay.new({calendar_id: @calendar.id, day_theme: day}).save
        end
    end

    after_action :create_calendar_days

    private
        def calendar_params
            params.require(:calendar).permit(:name)
        end
end
