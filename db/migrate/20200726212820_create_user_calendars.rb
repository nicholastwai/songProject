class CreateUserCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :user_calendars do |t|
      t.string :user_id
      t.string :calendar_id

      t.timestamps
    end
  end
end
