class CreateEReviews < ActiveRecord::Migration
  def change
    create_table :e_reviews do |t|
      t.integer :rating
      t.string :comment
      t.integer :e_info_id

      t.timestamps null: false
    end
  end
end
