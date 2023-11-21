class AddCategoryToZooms < ActiveRecord::Migration[6.1]
  def change
    add_column :zooms, :category, :string
  end
end
