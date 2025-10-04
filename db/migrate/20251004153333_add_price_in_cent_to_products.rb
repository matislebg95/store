class AddPriceInCentToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :price_in_cents, :integer
  end
end
