class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  # When you delete a list, all associated bookmarks should be deleted but not the movies
  validates :name, uniqueness: true, presence: true
end
