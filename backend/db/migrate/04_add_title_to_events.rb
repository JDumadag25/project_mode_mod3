class AddTitleToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :title, :string
    add_column :events, :price, :string
  end
end
