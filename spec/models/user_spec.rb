# frozen_string_literal: true

require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe User, type: :model do
  subject(:user) { create(:user) }

  context 'with valid attributes' do
    it { is_expected.to be_valid }
  end

  describe '#email' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }

    context 'without @' do
      before { user.email = 'jane at example.com' }

      it { is_expected.to_not be_valid }
    end
  end

  describe '#encrypted_password' do
    it { is_expected.to validate_presence_of(:encrypted_password) }
  end
end
