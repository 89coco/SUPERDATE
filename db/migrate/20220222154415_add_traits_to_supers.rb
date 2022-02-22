class AddTraitsToSupers < ActiveRecord::Migration[6.1]
  def change
    add_column :supers, :strength, :integer
    add_column :supers, :humour, :integer
    add_column :supers, :romance, :integer
    add_column :supers, :kindness, :integer
  end
end
