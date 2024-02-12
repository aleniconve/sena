class Bookmark < ApplicationRecord
  belongs_to :folder
  belongs_to :video
end
