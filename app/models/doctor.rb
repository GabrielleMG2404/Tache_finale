class Doctor < ApplicationRecord
	belongs_to :user
	belongs_to :speciality
	has_many :appointments
	has_many :prescriptions
end
