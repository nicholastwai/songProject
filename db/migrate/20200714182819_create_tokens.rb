class CreateTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :tokens do |t|
      t.string :access_token, :null => false
      t.string :refresh_token, :null => false

      t.timestamps
    end
  end
end
