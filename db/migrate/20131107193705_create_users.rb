class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :gender
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :email_is_validated

      t.timestamps
    end
  end
end
