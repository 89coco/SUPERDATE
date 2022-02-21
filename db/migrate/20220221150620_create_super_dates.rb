class CreateSuperDates < ActiveRecord::Migration[6.1]
  def change
    create_table :super_dates do |t|
      t.references :super, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :date

      t.timestamps
    end
  end
end
