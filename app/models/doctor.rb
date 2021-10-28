class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patient
  has_many :specialty
  belongs_to :city
end
