require 'spec_helper'

describe User do
  let(:user) { create(:user) }

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  describe '#email' do
    it 'is required' do
      user.email = nil
      user.valid?
      expect(user.errors[:email].size).to eq(1)
    end

    it 'is invalid without @' do
      user.email = 'joe at example.com'
      user.valid?
      expect(user.errors[:email].size).to eq(1)
    end

    it 'is unique' do
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email].size).to eq(1)
    end
  end

  describe '#encrypted_password' do
    it 'is required' do
      user.encrypted_password = nil
      user.valid?
      expect(user.errors[:encrypted_password].size).to eq(1)
    end
  end
end
