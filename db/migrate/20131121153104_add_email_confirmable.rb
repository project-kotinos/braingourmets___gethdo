class AddEmailConfirmable < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      ## Confirmable
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      t.string   :unlock_token # Only if unlock strategy is :email or :both
      t.datetime :locked_at
    end

    def self.down
      remove_column :users, :unconfirmed_email
      remove_column :users, :failed_attempts
      remove_column :users, :unlock_token
      remove_column :users, :locked_at
    end
  end
end