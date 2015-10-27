class CreateRegisteredUsers < ActiveRecord::Migration
  def change
    create_table :registered_users do |t|
      t.string :username
      t.string :password

      t.timestamps null: false
    end
  end
end
