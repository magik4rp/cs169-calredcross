class AddInfoToHomeImages < ActiveRecord::Migration[5.0]
  def change
    add_reference :home_images, :info, foreign_key: true
  end
end
