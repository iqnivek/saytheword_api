# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


list1 = WordList.new(name: "Jazz musicians")
list1.words.build(word: "Wes Montgomery")
list1.words.build(word: "Charlie Parker")
list1.words.build(word: "Chris Potter")
list1.words.build(word: "Brad Mehldau")

list1.save!
