class CreateBars < ActiveRecord::Migration[5.1]
 def change
   create_table :bars do |t|
     t.string :name
     t.integer :zip_code
     t.string :address

     t.timestamps
   end
 end
end
