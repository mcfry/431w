class CreateBidInfos < ActiveRecord::Migration
  def change
    create_table :bid_infos do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.belongs_to :item, index: true

      t.timestamps null: false
    end
  end
end
