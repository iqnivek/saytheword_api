class Game < ActiveRecord::Base
  belongs_to :word_list

  has_and_belongs_to_many :words
end
