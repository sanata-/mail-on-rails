class Account < ApplicationRecord
 
  validates :login, presence: true
  validates :password, length: { in: 6..20 }

  after_save :call_api
  before_update :mailbox_update

  def call_api
    m = MailboxService.new
    m.params(login: self.login, password: self.password)
    m.create
  end

  def mailbox_update
    m = MailboxService.new
    m.params(login: self.login, password: self.password)
    m.update
  end
end
