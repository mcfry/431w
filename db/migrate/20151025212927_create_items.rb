class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
	  t.belongs_to :e_info, index: true
      t.integer :quantity
      t.string :reserve_price
      t.boolean :auction

      t.timestamps null: false
    end
  end
end
