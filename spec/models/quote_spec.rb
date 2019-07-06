# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Quote, type: :model do
  it 'has a valid factory' do
    expect(build(:good_quote)).to be_valid
  end

  let(:quote) { create(:good_quote) }

  describe 'model validations' do
    it { expect(quote).to validate_presence_of(:message) }
  end
end
