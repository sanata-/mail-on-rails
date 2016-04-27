class ChangeUidLimit < ActiveRecord::Migration[5.0]
  def change
    change_column :mailboxes, :uid, :integer, :limit => 8
  end
end
