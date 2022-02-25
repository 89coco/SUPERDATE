class AddAddressToSupers < ActiveRecord::Migration[6.1]
  def change
    add_column :supers, :address, :string
  end
end
