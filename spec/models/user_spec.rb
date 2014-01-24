require 'spec_helper'

describe User do
  it 'is invalid with empty email' do
    User.new(email: '', encrypted_password: '65846465').should_not be_valid
  end

  it 'has email errors with empty email' do
    User.new(email: '', encrypted_password: '65846465')
        .should have(1).error_on(:email)
  end

  it 'is invalid with empty encrypted_password' do
    User.new(email: 'jane@example.com', encrypted_password: '')
      .should_not be_valid
  end

  it 'has encrypted_password errors with empty encrypted_password' do
    User.new(email: 'jane@example.com', encrypted_password: '')
        .should have(1).error_on(:encrypted_password)
  end

  it 'is invalid with non-unique email' do
    create(:user_joe)
    build(:user_joe).should_not be_valid
  end

  it 'has email_errors with non-unique email' do
    create(:user_joe)
    build(:user_joe).should have(1).error_on(:email)
  end

  it 'has email_errors with an email without "@"' do
    User.new(email: 'joe at example.com', encrypted_password: '658465')
        .should have(1).error_on(:email)
  end

  it 'with a valid email address has no email errors' do
    User.new(email: 'micha@example.com', encrypted_password: '6584665')
      .should have(0).errors_on(:email)
  end
end
