# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(build(:good_user)).to be_valid
  end

  let(:user) { create(:good_user) }

  describe 'model validations' do
    it { expect(user).to validate_presence_of(:email) }
  end

  describe 'model associations' do
    it { expect(user).to have_many(:quotes) }
  end
end
