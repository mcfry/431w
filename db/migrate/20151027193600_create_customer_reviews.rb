class CreateCustomerReviews < ActiveRecord::Migration
  def change
    create_table :customer_reviews do |t|
      t.integer :rating
      t.string :comment
      t.belongs_to :order, index: true

      t.timestamps null: false
    end
  end
end
