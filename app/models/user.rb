##
# This model represents a user, i.e., a person that can log in.
#
# @author Oliver Klee
#
class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :encrypted_password, presence: true
end
