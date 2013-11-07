class RemoveColumns < ActiveRecord::Migration
  def self.up
    remove_column :users, :gender
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :email_is_validated
  end

  def self.down
    add_column :users, :gender, :int
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :email_is_validated, :boolean
  end
end
