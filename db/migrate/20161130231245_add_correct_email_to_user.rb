class AddCorrectEmailToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :correct_email, :string, default: nil
  end
end
