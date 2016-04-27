class CreateMailboxes < ActiveRecord::Migration[5.0]
  def change
    enable_extension "hstore"
    create_table :mailboxes do |t|
      t.references :user, foreign_key: true
      t.integer :uid
      t.hstore :parameters

      t.timestamps
    end
  end
end
