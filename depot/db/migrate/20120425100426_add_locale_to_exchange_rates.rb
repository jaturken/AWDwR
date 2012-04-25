class AddLocaleToExchangeRates < ActiveRecord::Migration
  def change
    add_column :exchange_rates, :locale, :string

  end
end
