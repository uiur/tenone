# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
courses = YAML.load(File.open('db/ukeru.yml'))
courses.each do |course|
  Course.create(teacher: course[0], faculty: course[1], name: course[2], enrollment: course[3], pass: course[4])
end
