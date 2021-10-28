# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# 10.times do 
#   city = City.create!(
#     name: Faker::Address.city
#   )
# end

10.times do 
  doctor = Doctor.create!(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    zip_code: Faker::Address.zip_code,
   
  )
end

20.times do
  patient = Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
  )
end
10.times do
  Specialty.create!(
    name: "dentiste" 
  )
end
doctor =Doctor.all
patient = Patient.all
specialties = Specialty.all
10.times do |i|
  Appointment.create(date:Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) , 
                      doctor:doctor[rand(0...doctor.length)], 
                      patient:patient[rand(0...patient.length)],
                    )
                  end
Diplome.create!(doctor:doc[rand(0...doc.length)], specialty:specialties)
                
                
