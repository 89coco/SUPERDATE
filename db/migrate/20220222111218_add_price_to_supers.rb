class AddPriceToSupers < ActiveRecord::Migration[6.1]
  def change
    add_column :supers, :price, :integer
  end
end
