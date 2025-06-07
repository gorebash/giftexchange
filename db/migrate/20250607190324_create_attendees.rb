class CreateAttendees < ActiveRecord::Migration[8.0]
  def change
    create_table :attendees do |t|
      t.string :first_name
      t.string :likes
      t.timestamps

      t.references :gift_exchange, null: false, foreign_key: true
    end
  end
end
