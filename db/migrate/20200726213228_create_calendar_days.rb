class CreateCalendarDays < ActiveRecord::Migration[6.0]
  def change
    create_table :calendar_days do |t|
      t.string :calendar_id
      t.string :calendar_theme

      t.timestamps
    end
  end
end
