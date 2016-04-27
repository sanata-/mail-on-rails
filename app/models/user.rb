class User < ApplicationRecord
  has_one :mailbox, dependent: :destroy

  after_save    :create_mailbox
  after_destroy :remove_mailbox

  def create_mailbox
    mailbox = CreateMailbox.new
    mailbox.create(self.login, self.password)
    Mailbox.create!(user_id: self.id, uid: mailbox.response['uid'])
  end

  def remove_mailbox
    mailbox = RemoveMailbox.new
    mailbox.remove(self.login)
  end
end
