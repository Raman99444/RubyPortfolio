3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics are created."

10.times do |blog|
	Blog.create!(
		title: "my title #{blog}",
		body: "this is the just test body",
		topic_id: Topic.last.id
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

8.times do |portfolio|
	Portfolio.create!(
		title: "My portfolio #{portfolio}",
		subtitle: "Ruby programmer",
		body: "Test body content",
		main_image:"https://via.placeholder.com/600",
		thumb_image:"https://via.placeholder.com/150"
	)
end

1.times do |portfolio|
	Portfolio.create!(
		title: "My portfolio #{portfolio}",
		subtitle: "Angular programmer",
		body: "Test body content",
		main_image:"https://via.placeholder.com/600",
		thumb_image:"https://via.placeholder.com/150"
	)
end

puts "9 portfolio are created"

3.times do |technology|
  Portfolio.last.technologies.create!(
  	name: "Technology#{technology}"
  )
end

puts "3 technologies are created"