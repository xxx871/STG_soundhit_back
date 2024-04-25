# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Post.create!(
  [
    { title: '野球のルール基礎知識' },
    { title: 'プロ野球選手のトレーニング方法' },
    { title: '野球の歴史とは' },
    { title: 'メジャーリーグと日本プロ野球の違い' },
    { title: '野球用具の選び方' },
    { title: '野球の国際大会について' }
  ]
)