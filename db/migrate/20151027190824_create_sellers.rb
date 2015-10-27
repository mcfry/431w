class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :bank_account
      t.float :rating
      t.string :company_name
      t.string :phone_number
      t.string :email
      t.string :address
      t.string :description
      t.belongs_to :registered_user, index: true

      t.timestamps null: false
    end
  end
end
