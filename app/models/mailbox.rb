class Mailbox < ApplicationRecord

  def self.where_name(arg)
    self.where('data @> ?', { name: arg }.to_json)
  end
end
