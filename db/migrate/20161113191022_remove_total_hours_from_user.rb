class RemoveTotalHoursFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :rotal_hours, :integer
  end
end
