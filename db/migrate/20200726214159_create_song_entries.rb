class CreateSongEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :song_entries do |t|
      t.string :song_name
      t.string :song_entry_author
      t.string :note

      t.timestamps
    end
  end
end
