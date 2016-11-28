class AddRefreshTokenToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :refresh_token, :string, default: nil
  end
end
