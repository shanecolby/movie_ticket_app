class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :customer_name
      t.string :customer_email
      t.integer :showing_id

      t.timestamps
    end
  end
end
