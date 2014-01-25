require 'spec_helper'

describe User do
  let(:user) { create(:user) }

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  describe '#email' do
    it 'is required' do
      user.email = nil
      expect(user).to have(1).error_on(:email)
    end

    it 'is invalid without @' do
      user.email = 'joe at example.com'
      expect(user).to have(1).error_on(:email)
    end

    it 'is unique' do
      another_user = build(:user, email: user.email)
      expect(another_user).to have(1).error_on(:email)
    end
  end

  describe '#encrypted_password' do
    it 'is required' do
      user.encrypted_password = nil
      expect(user).to have(1).error_on(:encrypted_password)
    end
  end
end
