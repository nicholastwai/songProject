class AddUserIdToTokens < ActiveRecord::Migration[6.0]
  def change
    add_reference :tokens, :user
  end
end