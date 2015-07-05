class WordListSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :words

  def words
    object.words.pluck(:word)
  end
end
