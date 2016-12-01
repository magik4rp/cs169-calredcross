class CreateFavPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :fav_photos do |t|
      t.references :user_id, foreign_key: true
      t.references :photo_id, foreign_key: true

      t.timestamps
    end
  end
end
