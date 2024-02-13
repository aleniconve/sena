class AddSearchCountToVideos < ActiveRecord::Migration[7.1]
  def change
    add_column :videos, :search_count, :integer
  end
end
