class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patient,through: :appointments
  has_many :specialty
  belongs_to :city, optional: true
  
end
