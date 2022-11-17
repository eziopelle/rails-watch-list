class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie, :list, :comment, presence: true

  validates :list, uniqueness: { scope: :movie }
end
