class CreateEReviews < ActiveRecord::Migration
  def change
    create_table :e_reviews do |t|
      t.belongs_to :e_info, index: true
      t.integer :rating
      t.string :comment
      t.integer :e_info_id

      t.timestamps null: false
    end
  end
end
