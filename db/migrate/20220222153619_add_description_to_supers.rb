class AddDescriptionToSupers < ActiveRecord::Migration[6.1]
  def change
    add_column :supers, :description, :string
    add_column :supers, :text, :string
  end
end
