class Specialty < ApplicationRecord
	has_many :graduations, dependent: :destroy
	has_many :doctors, through: :graduations
end
