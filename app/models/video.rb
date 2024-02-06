class Video < ApplicationRecord
  has_one_attached :video

  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true

  # Here add array of categories
  # validations for size of videos CLOUDINARY (Dimensions and Weigth)
end
