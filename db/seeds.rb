# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cat.create([
  { name: 'Grumpy Cat', image: 'http://ic1.static.km.ru/sites/default/files/img/news/2014/7/3/grumpy-cat-14.jpg' },
  { name: 'Maru', image: 'http://ladydinahs.com/wp-content/uploads/2013/08/maru.jpg' },
  { name: 'Colonel Meow', image: 'http://media3.s-nbcnews.com/j/streams/2014/January/140130/2D11470142-2d9755085-8c8771458-tdy-130828-colonel-meow-01-streams-desktop-medium.today-inline-large.jpg' },
  { name: 'Worried Eyebrows Cat', image: 'http://i2.cdnds.net/13/06/618x440/odd-cat-with-worried-eyebrows-instagram-2.jpg' },
  { name: 'Venus', image: 'http://static.boredpanda.com/blog/wp-content/uploads/2014/11/most-popular-cats-venus-21.jpg' },
  { name: 'Garfi', image: 'http://static.boredpanda.com/blog/wp-content/uploads/2014/11/most-popular-cats-garfi-11__605.jpg' },
  { name: 'Hamilton', image: 'http://static.boredpanda.com/blog/wp-content/uploads/2014/11/most-popular-cats-hamilton-11__605.jpg' },
  { name: 'Lilu', image: 'http://static.boredpanda.com/blog/wp-content/uploads/2014/11/famous-cat__605.jpg' },
])
User.create([
  { email: "tester@example.com", password: "password", password_confirmation: "password", name: "tester" }
])
Rails.logger.debug 'DATA SEED SUCCESSFUL'
