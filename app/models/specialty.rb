class Specialty < ApplicationRecord
      has_many :doctors, through: :diplome
      has_many :diplomes

end
