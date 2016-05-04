class CreateMailboxes < ActiveRecord::Migration[5.0]
  def change
    create_table :mailboxes do |t|
      t.jsonb :data, null: false, default: '{}'
    end
   add_index  :mailboxes, :data, using: :gin
  end
end
