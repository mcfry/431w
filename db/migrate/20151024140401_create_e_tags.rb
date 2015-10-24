class CreateETags < ActiveRecord::Migration
  def change
    create_table :e_tags do |t|
      t.string :name
      t.integer :e_info_id

      t.timestamps null: false
    end
  end
end
