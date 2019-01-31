require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointement.destroy_all
City.destroy_all
Speciality.destroy_all
Doctorspeciality.destroy_all

10.times do 
    city = City.create!(name: Faker::Address.city)
   end

puts "10 villes ont été créées"
10.times do
    patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
    end

puts "10 patients ont été créés"
10.times do
   doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
  end

puts "10 docteurs ont été créés"
20.times do
   speciality = Speciality.create!(name: Faker::Lorem.word)
  end

puts "10 spécialités ont été créées"
50.times do
    appointement = Appointement.create!(date: Faker::Time.between(2.days.ago, Date.today, :day), city: City.all.sample, patient: Patient.all.sample, doctor: Doctor.all.sample)
   end

puts "10 rendez-vous ont été créés"
20.times do
    doctorspeciality = Doctorspeciality.create!(doctor: Doctor.all.sample, speciality: Speciality.all.sample)
end
puts "10 jonctions ont été créées"
