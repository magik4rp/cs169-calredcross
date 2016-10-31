class AddSemHoursToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :sem_hours, :integer
  end
end
