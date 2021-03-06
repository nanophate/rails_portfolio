# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env == 'development'
    (1..50).each do |i|
        EngApp.create(author: "ユーザー#{i}", title: "タイトル#{i}", tag: "タグ#{i}", body: "本文#{i}")
    end
end