class AddPriceToDoughRemovePriceFilling < ActiveRecord::Migration[5.1]
  def change
    remove_column :fillings, :price_cents
  end
end
