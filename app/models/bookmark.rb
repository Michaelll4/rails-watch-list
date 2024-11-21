class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, :presence => true, :length => {
    :maximum => 6,
  :tokenizer => lambda { |str| str.scan(/\w+/) }, :too_long  => 'Please limit your summary to %{count} words'
  }
  validates :list, uniqueness: true
  validates :overview, uniqueness: true
  validates :title, uniqueness: true
end
