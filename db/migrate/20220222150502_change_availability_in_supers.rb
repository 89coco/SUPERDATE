class ChangeAvailabilityInSupers < ActiveRecord::Migration[6.1]
  def change
    change_column_default :supers, :availability, false
  end
end
