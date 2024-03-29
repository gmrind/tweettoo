User.create!(f_name: "Ghulam Murtaza",
						email: "gm@gmail.com",
						password:			   			 "asdfasdf",
						password_confirmation: "asdfasdf")

99.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@example.com"
	password = "password"
	User.create!(f_name: name,
	email: email,
	password:	password,
	password_confirmation: password)
end

users = User.order(:created_at).take(100)
50.times do
	content = Faker::Lorem.sentence(5)
	users.each { |user| user.microposts.create!(content: content) }
end

users = User.all
user = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }