class AddLocaleToPaymentTypes < ActiveRecord::Migration
  def change
    add_column :payment_types, :locale, :string

  end
end
