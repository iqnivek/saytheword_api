class WordList < ActiveRecord::Base
  has_many :words
  has_many :games

  # TODO add not null db constraint
  validates :name, presence: true
end
