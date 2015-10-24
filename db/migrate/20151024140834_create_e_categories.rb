class CreateECategories < ActiveRecord::Migration
  def change
    create_table :e_categories do |t|
      t.string :name
      t.references :parent_cat, index: true

      t.timestamps null: false
    end
  end
end
