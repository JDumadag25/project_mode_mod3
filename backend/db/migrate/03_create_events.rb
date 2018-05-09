class CreateEvents < ActiveRecord::Migration[5.1]
 def change
   create_table :events do |t|
     t.string :name
     t.integer :zip_code
     t.string :address

     t.timestamps
   end
 end
end
