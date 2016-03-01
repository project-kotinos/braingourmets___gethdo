# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.integer :gender
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :email_is_validated

      t.timestamps null: false
    end
  end

  def down
    drop table :users
  end
end