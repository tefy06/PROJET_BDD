# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Specialty.destroy_all
Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
Graduation.destroy_all
City.destroy_all

city_1 = City.create(name: "Antananarivo")

city_2 = City.create(name: "Nosy-Be Hell Ville")

city_3 = City.create(name: "Diego Suarez")

specialty_1 = Specialty.create(name: "Chirurgien")
specialty_2 = Specialty.create(name: "Dentiste")
Anjara = Doctor.create(first_name: "Anjara", last_name: "Houssen", zip_code: "08098-1171", city: city_1)

Felix = Patient.create(first_name: "Felix", last_name: "Durant")

Rendez_vous_1 = Appointment.create(date: "2019-10-12 12:30", doctor: Anjara, patient: Felix)


Manou = Patient.create(first_name: "Manou", last_name: "Manou", city: city_2)

Celestin = Doctor.create(first_name: "Celestin", last_name: "Said", zip_code: "08098-1112", city: city_1)

Rendez_vous_2 = Appointment.create(date: "2019-12-25", doctor: Celestin, patient: Manou, city: city_3)

Rendez_vous_3 = Appointment.create(date: "2019-06-01 10:00", doctor: Anjara, patient: Felix, city: city_1)

5.times do
	essaie = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

#3.times do
#	doc_try = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Job.field, zip_code: Faker::Address.zip_code)
#end


graduation = Graduation.create(doctor: Anjara, specialty: specialty_1)

graduation_1 = Graduation.create(doctor: Celestin, specialty: specialty_1)

