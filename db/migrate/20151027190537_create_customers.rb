class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :email
      t.string :shipping_address
      t.string :phone_number
      t.belongs_to :registered_user

      t.timestamps null: false
    end
  end
end
