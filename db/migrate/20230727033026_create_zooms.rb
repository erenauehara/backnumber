class CreateZooms < ActiveRecord::Migration[6.1]
  def change
    create_table :zooms do |t|
      t.string :title
      t.string :about

      t.timestamps
    end
  end
end
