class Mailbox < ApplicationRecord
  # == Relationships ========================================================
  belongs_to :account
  # == Validations ==========================================================
  # == Scopes ===============================================================
  # == Callbacks ============================================================
  after_initialize :all_keys
  # == Class Methods ========================================================
  # == Instance Methods =====================================================
  def all_keys
    self.info.keys.each do |k|
      define_singleton_method("#{k}") do
        self.info["#{k}"]
      end
    end
  end
end
