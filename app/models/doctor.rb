class Doctor < ApplicationRecord
  has_many :appointements
  has_many :patients, through: :appointements
  has_many :doctorspecialities
  has_many :specialities, through: :doctorspecialities
  belongs_to :city
end
