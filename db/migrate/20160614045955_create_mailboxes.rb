class CreateMailboxes < ActiveRecord::Migration[5.0]
  def change
    enable_extension "hstore"
    create_table :mailboxes do |t|
      t.hstore :info
      t.integer :account_id
      t.timestamps
    end
    add_index :mailboxes, :info, using: :gin
  end
end
