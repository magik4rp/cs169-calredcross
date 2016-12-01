class CreateHomeImages < ActiveRecord::Migration[5.0]
  def change
    create_table :home_images do |t|
      t.string :url
      t.text :text

      t.timestamps
    end
  end
end
