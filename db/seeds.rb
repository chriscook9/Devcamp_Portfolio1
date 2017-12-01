10.times do |blog|
  Blog.create!(
	  title: "My Blog Post #{blog}", 
	  body: "Do you know someone you would like to change in some way? 
	  When you find yourself getting caught 
	  up in other people’s annoying habits or behaviors, think of a 
	  few reasons they might be acting the way they are. 
	  Say to yourself, “I should forgive them for this because …” 
	  and conclude this sentence with an open mind. 
	  You’ll be in a much better position to hold back from criticizing.  " 
)
end

puts "10 blog posts created"

5.times do |skills|
	Skill.create!(
		title: "Rails #{skills}",
		percent_utilized: 15
)
end

puts "5 skills created"

9.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio_item:#{portfolio_item}",
		subtitle: "My great service",
		body: "As a salesman at one point in his life, author Dale Carnegie made 
		  his sales territory the national leader for the firm he worked for.
		  Carnegie eventually ended his sales career and taught public speaking, 
		  earning up to $500 every week -- the equivalent of $11,800 today. 
		  Even Warren Buffet, one of the most
		   successful investors of the 20th century, 
		  took Carnegie's course at age 20.",
		main_image: "http://placehold.it/360x150",
		thumb_image: "http://placehold.it/310x150"
 	)
end

puts "9 portfolio items created"


#{}"My Blog Post# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#{} Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
