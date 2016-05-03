class Email < ApplicationRecord
  validates :login, presence: true
end
