class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :bank
      t.string :credit
      t.datetime :ptime
      t.string :address
      t.datetime :stime
      t.belongs_to :item, index: true
      t.belongs_to :registered_user, index: true

      t.timestamps null: false
    end
  end
end
