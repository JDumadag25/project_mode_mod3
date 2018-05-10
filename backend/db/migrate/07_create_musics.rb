class CreateMusics < ActiveRecord::Migration[5.1]
  def change
    create_table :musics do |t|
      t.string :name
      t.integer :zip_code
      t.string :address
      t.string :title
      t.string :price

      t.timestamps
    end
  end
end
