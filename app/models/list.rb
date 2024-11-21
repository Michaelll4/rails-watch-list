class List < ApplicationRecord
  has_many :movies
  has_many :bookmarks, dependent: :destroy

end
