class Email < ApplicationRecord
  validates :login, uniqueness: true
  validates :password, length: { in: 6..20 }
end
