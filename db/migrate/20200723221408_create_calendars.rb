class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.string :rails
      t.string :generate

      t.timestamps
    end
  end
end
