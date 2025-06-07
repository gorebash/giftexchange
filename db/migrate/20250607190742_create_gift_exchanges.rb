class CreateGiftExchanges < ActiveRecord::Migration[8.0]
  def change
    create_table :gift_exchanges do |t|
      t.timestamps
    end
  end
end
