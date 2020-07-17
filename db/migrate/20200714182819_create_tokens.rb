class CreateTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :tokens do |t|
      t.string :access_token, :null => false
      #t.string :token_type
      #t.integer :expires_in
      t.string :refresh_token, :null => false
      #t.string :scope

      t.timestamps
    end
  end
end
