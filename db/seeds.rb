10.times do |blog|
	Blog.create!(
		title: "my title #{blog}",
		body: "this is the just test body"
	)
end

puts "10 blogs are created"

5.times do |skill|
	Skill.create!(
		title: "my skill #{skill}",
		percent_utilized:10
	)
end

puts "5 skills are created"

9.times do |portfolio|
	Portfolio.create!(
		title: "My portfolio #{portfolio}",
		subtitle: "my sub title",
		body: "Test body content",
		main_image:"https://via.placeholder.com/600",
		thumb_image:"https://via.placeholder.com/150"
	)
end

puts "9 portfolio are created"
