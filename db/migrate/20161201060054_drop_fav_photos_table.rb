class DropFavPhotosTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :fav_photos
  end
  
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
