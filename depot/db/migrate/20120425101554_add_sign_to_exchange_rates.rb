class AddSignToExchangeRates < ActiveRecord::Migration
  def change
    add_column :exchange_rates, :sign, :string

  end
end
