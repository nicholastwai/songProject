class AddDetailsToTokens < ActiveRecord::Migration[6.0]
  def change
    add_column :tokens, :token_type, :string
    add_column :tokens, :expires_in, :integer
    add_column :tokens, :scope, :string
  end
end
