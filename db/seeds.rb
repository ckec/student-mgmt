# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


20.times do |i|
  Student.create(
    first_name: "Student #{i+1}",
    last_name: "Last Name #{i+1}",
    email: "student#{i+1}@gmail.com"
  )
end

Student.all.each do |student|
  student.blogs.create(title: 
    "Blog for Student #{student.id}", content: "Custom content pending")
  student.blogs.create(title: 
    "Blog for Student #{student.id}", content: "Custom content pending") 
end

10.times do |i|
  Course.create(
    name: "Course #{i+1}",
    description: "Description for Course #{i+1}"
  )
end
