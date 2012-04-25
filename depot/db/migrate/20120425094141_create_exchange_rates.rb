class CreateExchangeRates < ActiveRecord::Migration
  def change
    create_table :exchange_rates do |t|
      t.string :name
      t.decimal :rate

      t.timestamps
    end
  end
end
