class AddCalendarDayIdToSongEntries < ActiveRecord::Migration[6.0]
  def change
    add_column :song_entries, :calendar_day_id, :integer
  end
end
