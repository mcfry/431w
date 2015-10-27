class CreateAuctionProcesses < ActiveRecord::Migration
  def change
    create_table :auction_processes do |t|
      t.string :bid_price
      t.belongs_to :bid_info, index: true
      t.belongs_to :customer, index: true

      t.timestamps null: false
    end
  end
end
