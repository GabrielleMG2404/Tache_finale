class Prescription < ApplicationRecord
	belongs_to :appointment
	has_many :medications
end
