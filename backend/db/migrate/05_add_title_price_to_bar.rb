class AddTitlePriceToBar < ActiveRecord::Migration[5.1]
  def change
    add_column :bars, :title, :string
    add_column :bars, :price, :string
  end
end
