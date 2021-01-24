class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.references :invoice, foreign_key: true
      t.string 'credit_card_number'
      t.string 'result'
      t.date 'credit_card_expiration_date'
      t.timestamps
    end
  end
end
