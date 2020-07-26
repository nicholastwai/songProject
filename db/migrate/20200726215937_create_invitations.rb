class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.references :calendar, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :invitation_token

      t.timestamps
    end
  end
end
