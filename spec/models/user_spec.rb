require 'spec_helper'

describe User do
  it 'is invalid with empty email' do
    expect(User.new(email: '', encrypted_password: '65846465')).to be_invalid
  end

  it 'has email errors with empty email' do
    expect(User.new(email: '', encrypted_password: '65846465'))
      .to have(1).error_on(:email)
  end

  it 'is invalid with empty encrypted_password' do
    expect(User.new(email: 'jane@example.com', encrypted_password: ''))
      .to be_invalid
  end

  it 'has encrypted_password errors with empty encrypted_password' do
    expect(User.new(email: 'jane@example.com', encrypted_password: ''))
        .to have(1).error_on(:encrypted_password)
  end

  it 'is invalid with non-unique email' do
    create(:user_joe)
    expect(build(:user_joe)).to be_invalid
  end

  it 'has email_errors with non-unique email' do
    create(:user_joe)
    expect(build(:user_joe)).to have(1).error_on(:email)
  end

  it 'has email_errors with an email without "@"' do
    expect(User.new(email: 'joe at example.com', encrypted_password: '658465'))
        .to have(1).error_on(:email)
  end

  it 'with a valid email address has no email errors' do
    expect(User.new(email: 'micha@example.com', encrypted_password: '6584665'))
      .to have(0).errors_on(:email)
  end
end
