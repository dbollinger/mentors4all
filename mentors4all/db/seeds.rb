# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  Mentor.create(user_attributes: { email: Faker::Internet.email, password: 'password', first_name: Faker::StarWars.character.split(' ').first, last_name: Faker::StarWars.character.split(' ').last }, location: Faker::StarWars.planet, employment_status: 'Student', employment_location: 'Jedi High', prior_experience: Faker::Hacker.say_something_smart, courses_taken: Faker::StarWars.specie, example_explanation: Faker::StarWars.quote, cs_expertise: Faker::Hacker.ingverb)
  Educator.create(user_attributes: { email: Faker::Internet.email, password: 'password', first_name: Faker::StarWars.character.split(' ').first, last_name: Faker::StarWars.character.split(' ').last }, school: Faker::StarWars.planet, profile_text: Faker::Lorem.paragraph, additional_comments: Faker::Lorem.paragraph)
end

20.times do
  CsSubject.create(subject: Faker::Hacker.noun)
end

50.times do
  weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
  hours = ["Before noon", "After noon", "All day"]
  types = ["In-class", "Out of class", "After school"]
  Availability.create(day: weekdays.sample, time: hours.sample, assistance_type: types.sample)
end

10.times do
  grades = ["K-2", "3-5", "6-8", "9-12"]
  GradeLevel.create(level: grades.sample)
end

100.times do
  MentorSubject.create(mentor_id: rand(1..10), cs_subject_id: rand(1..20))
  EducatorSubject.create(educator_id: rand(1..10), cs_subject_id: rand(1..20))

  MentorAvailability.create(mentor_id: rand(1..10), availability_id: rand(1..50))
  EducatorAvailability.create(educator_id: rand(1..10), availability_id: rand(1..50))

  MentorGradeLevel.create(mentor_id: rand(1..10), grade_level_id: rand(1..10))
  EducatorGradeLevel.create(educator_id: rand(1..10), grade_level_id: rand(1..10))
end

25.times do
  MentorContact.create(mentor_id: rand(1..10), educator_id: rand(1..10))
end
