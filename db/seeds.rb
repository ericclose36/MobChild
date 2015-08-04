# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
include Faker

25.times do
  article = Article.create(
                       title: "#{Company.bs}",
                       author: "#{Name.name}",
                       description: Lorem.sentence,
                       year: rand(1940..2015),
                       publisher: "youtube",
                       image: "articles/ror.jpg"
                      )
end