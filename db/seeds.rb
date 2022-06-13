# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Book.destroy_all
Author.destroy_all

cp = Author.create(name:'Christopher Paolini', age:38)
rr = Author.create(name:'Rick Riordan', age:58)
jrr = Author.create(name:'J.R.R. Tolkein', age:81)

cp.books.create(name:'Eragon', genre:'Fantasy')
cp.books.create(name:'The Fork, The Witch, and The Worm', genre:'Fantasy')

rr.books.create(name:'The Lightning Theif', genre:'Fantasy')
rr.books.create(name:'The Red Pyramid', genre:'Fantasy')

jrr.books.create(name:'The Hobbit', genre:'Fantasy')
jrr.books.create(name:'The Lord of the Rings', genre:'Fantasy')
