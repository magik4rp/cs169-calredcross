class AddAvatarToInfos < ActiveRecord::Migration[5.0]
  def self.up
    change_table :infos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :infos, :avatar
  end
end
