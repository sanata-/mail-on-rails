class UserMailboxForm
  include ActiveModel::Model
  include Virtus

  attribute :login, String
  attribute :password, String
  attribute :uid, Integer
  # attribute :active, Boolean, default: false

  attr_reader :mailbox
  validates :login, presence: true


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
    user = User.create!(login: email, password: password)
    @mailbox = user.mailbox.create!(uid: uid)
  end
end
