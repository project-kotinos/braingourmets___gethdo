require 'test_helper'

# Test case.
class UserTest < ActiveSupport::TestCase
  test 'User.email must not be empty' do
    user = User.new
    assert user.invalid?
    assert user.errors[:email].any?
  end

  test 'User.encrypted_password must not be empty' do
    user = User.new
    assert user.invalid?
    assert user.errors[:encrypted_password].any?
  end

  test 'User.email must be unique' do
    user = User.new(email: users(:one).email, encrypted_password: '0213231ab2')

    assert user.invalid?
    assert_equal ['has already been taken'], user.errors[:email]
  end
end
