class AddCreditCardAndExpirationToSales < ActiveRecord::Migration[6.0]
  def change
    add_column :sales, :credit_card_number, :integer
    add_column :sales, :expiration_date, :integer
  end
end
