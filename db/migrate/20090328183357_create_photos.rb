class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string :url
      t.string :title
      t.date :date_taken
      t.string :client
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
