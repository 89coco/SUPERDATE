class AddTotalToSuperDates < ActiveRecord::Migration[6.1]
  def change
    add_column :super_dates, :total, :integer
    add_column :super_dates, :hours, :integer
    add_column :super_dates, :comment, :text
  end
end
