class Appointment < ApplicationRecord
	belongs_to :doctor
	belongs_to :patient
	has_one :prescription
	has_one :payment
	has_one :diagnostic, dependent: :destroy
end
