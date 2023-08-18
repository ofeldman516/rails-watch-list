class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :movie, :list, presence: true
  validates_uniqueness_of :list, scope: :movie
  # validates_associated :list, uniqueness: true
  validates :comment, length: { minimum: 6 }
end

