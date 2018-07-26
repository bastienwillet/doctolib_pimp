# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
	City.create(postal_code: 74550)
end

10.times do
	Doctor.create(first_name: Faker::Dog.name, last_name: Faker::Dog.name, city_id: 1)
end

10.times do
	Patient.create(first_name: Faker::Dog.name, last_name: Faker::Dog.name, city_id: 1)
end

10.times do
	Appointment.create(date: Faker::Date.between(30.days.ago, Date.today), doctor_id: rand(Doctor.count), patient_id: rand(Patient.count), city_id: 1)
end

10.times do
	Specialty.create(specialty: Faker::Job.field)
end

10.times do
	Doctor.all.sample.specialties << Specialty.all.sample
end