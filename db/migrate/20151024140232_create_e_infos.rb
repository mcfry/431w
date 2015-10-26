class CreateEInfos < ActiveRecord::Migration
  def change
    create_table :e_infos do |t|
      t.belongs_to :e_category, index: true
      t.string :title
      t.string :description
      t.string :image_name

      t.timestamps null: false
    end
  end
end
