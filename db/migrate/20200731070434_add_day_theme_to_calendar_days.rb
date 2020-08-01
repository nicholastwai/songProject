class AddDayThemeToCalendarDays < ActiveRecord::Migration[6.0]
  def change
    add_column :calendar_days, :day_theme, :string
  end
end
