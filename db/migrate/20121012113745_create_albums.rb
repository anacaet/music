class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.date :year
      t.string :genre
      t.binary :data
      t.integer :artists_id

      t.timestamps
    end
  end
end
