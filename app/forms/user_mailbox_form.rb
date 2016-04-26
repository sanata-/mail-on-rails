class UserMailboxForm
  include ActiveModel::Model
  include Virtus

  attribute :email, String
  attribute :password, String
  attribute :active, Boolean, default: false

  attr_reader :info
  validates :email, presence: true


  def save
    if valid?
      persist!
      true
    else
      false
    end
  end

  private

  def persist!
    account = Account.create!(login: email, password: password)
    m = MailboxService.new
    m.edit(login)
  end
end
