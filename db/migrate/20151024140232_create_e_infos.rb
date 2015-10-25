class CreateEInfos < ActiveRecord::Migration
  def change
    create_table :e_infos do |t|
      t.string :title
      t.string :description
      t.string :image_name

      t.timestamps null: false
    end
  end
end
