class MailboxParams
  include Virtus.model

  attribute :password, String
  attribute :iname, String
  attribute :fname, String
  attribute :enabled, String
  attribute :birth_date, String
  attribute :sex, Integer
  attribute :hintq, String
  attribute :hinta, String
end
