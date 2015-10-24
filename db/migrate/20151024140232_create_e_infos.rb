class CreateEInfos < ActiveRecord::Migration
  def change
    create_table :e_infos do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
