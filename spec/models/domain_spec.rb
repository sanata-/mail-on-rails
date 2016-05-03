require 'rails_helper'

RSpec.describe Domain, type: :model do
  it 'model exists' do
    expect(Domain.new).to be
  end
end
