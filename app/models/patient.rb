class Patient < ApplicationRecord
  has_many  :appointment
  has_many :doctor
  belongs_to :city
end
