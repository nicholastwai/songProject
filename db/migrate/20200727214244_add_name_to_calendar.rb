class AddNameToCalendar < ActiveRecord::Migration[6.0]
  def change
    add_column :calendar, :name, :string
  end
end
