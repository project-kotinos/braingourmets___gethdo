# frozen_string_literal: true

##
# This model represents a user, i.e., a person that can log in.
#
# @author Oliver Klee
#
class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :encrypted_password, presence: true

  self.table_name = 'users'
end
