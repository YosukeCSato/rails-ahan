class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.text :artist
      t.text :title
      t.integer :year
      t.text :format
      t.integer :price
      t.integer :rates

      t.timestamps
    end
  end
end
