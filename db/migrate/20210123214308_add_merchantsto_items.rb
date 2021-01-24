class AddMerchantstoItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :items, :merchant, foreign_key: true
  end
end
