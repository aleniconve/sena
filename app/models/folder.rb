class Folder < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :videos, through: :bookmarks

  validates :name, presence: true
end
