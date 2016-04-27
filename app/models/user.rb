class User < ApplicationRecord
  has_one :mailbox

  after_save :call_api


  def call_api
    mailbox = CreateMailbox.new
    mailbox.create(self.login, self.password)
    Mailbox.create!(user_id: self.id, uid: mailbox.response['uid'])
  end
end
