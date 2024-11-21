class Movie < ApplicationRecord
  has_many :lists
  has_many :bookmarks
  validates :rating, presence: true, inclusion: { in: 0..5, message: 'must be between 0 and 5' }, numericality: { only_integer: true}
end
