class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string :photo_type
      t.string :title
      t.date :taken
      t.string :description
      t.string :url
      t.string :client

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
