class ChangeSearchCountDefaultOnVideos < ActiveRecord::Migration[7.1]
  def change
    change_column_default :videos, :search_count, from: nil, to: 0
  end
end
