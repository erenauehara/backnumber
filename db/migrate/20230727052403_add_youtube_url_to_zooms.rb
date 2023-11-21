class AddYoutubeUrlToZooms < ActiveRecord::Migration[6.1]
  def change
    add_column :zooms, :youtube_url, :string
  end
end
