class WordListSerializer < ActiveModel::Serializer
  attributes :id

  has_many :words
end
