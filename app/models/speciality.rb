class Speciality < ApplicationRecord
  has_many :doctorspecialities
  has_many :doctors, through: :doctorspecialities
end
