class CreateImages < ActiveRecord::Migration[5.0]
  def self.up 
    create_table :images do |t|
      t.column "name", :string 
      t.column "width", :integer 
      t.column "height", :integer 
    end 
  end 
 
  def self.down 
    drop_table :images 
  end 
  def change
    create_table :images do |t|

      t.timestamps
    end
  end
end
