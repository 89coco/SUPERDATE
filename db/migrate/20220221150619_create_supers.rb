class CreateSupers < ActiveRecord::Migration[6.1]
  def change
    create_table :supers do |t|
      t.string :super_name
      t.string :super_type
      t.string :universe
      t.boolean :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
