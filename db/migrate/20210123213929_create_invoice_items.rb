class CreateInvoiceItems < ActiveRecord::Migration[6.1]
  def change
    create_table :invoice_items do |t|
      t.float 'unit_price'
      t.integer 'quantity'
      t.references :item, foreign_key: true
      t.references :invoice, foreign_key: true
      t.timestamps
    end
  end
end
