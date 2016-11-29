class CreateInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :infos do |t|
      t.string :bulletin, default: "This is a bulletin"
      t.string :name, default: "Name Here"
      t.string :comments, default: "Here's where you'd write a cute blurb about the member of the month. Click on me to edit"

      t.timestamps
    end
  end
end
