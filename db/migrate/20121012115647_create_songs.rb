class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :lenght
      t.integer :albums_id

      t.timestamps
    end
  end
end
