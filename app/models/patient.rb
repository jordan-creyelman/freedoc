class Patient < ApplicationRecord
  has_many  :appointments
  has_many :doctor, through: :appointments
  belongs_to :city, optional: true
end
