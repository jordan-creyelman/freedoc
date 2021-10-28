class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :appointment
  belongs_to :specialty
  belongs_to :city
end
