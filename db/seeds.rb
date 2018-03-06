# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	User.create(name: "akash",password: "akash",password_confirmation: "akash",is_admin: true,email:"akash11196@gmail.com")
	UserAdminLeave.create(users_id: 1,leave_count: 33)
	puts "admin added"