require 'faker'
namespace :seed5 do 
	task :populate5 => :environment do 

		I18n.locale = :en
		Faker::Config.locale = :en
		50.times do 
			aa = Appointment.create(
				 patient_id: Patient.pluck(:id).sample,
				 doctor_id: Doctor.pluck(:id).sample,
				 date: Faker::Date.between(from: '2022-01-23', to: '2025-01-25'),
				 statut: ["Confirme", "Annulé", "En attente"].sample
				)
			#debugger
		end

		35.times do 
			ce = Diagnostic.create(
				appointment_id: Appointment.pluck(:id).sample,
				description: Faker::Lorem.sentence(word_count: 30),
				date: Faker::Date.between(from: '2022-01-23', to: '2025-01-25'),
				code_diagnostic: Faker::Number.binary(digits: 2)
				)
			#debugger
		end

		20.times do 
			dd = Doctor.create(
				nom: Faker::FunnyName.two_word_name,
				prenom: Faker::FunnyName.two_word_name,
				telephone: Faker::PhoneNumber.phone_number,
				user_id: User.pluck(:id).sample,
				speciality_id: Speciality.pluck(:id).sample,
				)
		end

		60.times do 
			m = MedicalReport.create(
				patient_id: Patient.pluck(:id).sample,
				description: Faker::ChuckNorris.fact,
				date: Faker::Date.between(from: '2022-01-23', to: '2025-01-25')
				)
			#debugger
		end

		100.times do 
			mm = Medication.create(
				nom: Faker::FunnyName.two_word_name,
				dosage: Faker::Lorem.words,
				frequence: Faker::Lorem.words(number: 4), 
				prescription_id: Prescription.pluck(:id).sample
				)
			#debugger
		end

		150.times do 
			pp = Patient.create(
				nom: Faker::FunnyName.two_word_name,
				prenom: Faker::FunnyName.two_word_name,
				date_naissance: Faker::Date.between(from: "1990-01-01", to: "2024-12-31"), 
				telephone: Faker::PhoneNumber.phone_number,
				user_id: User.pluck(:id).sample,
				)
		end

		150.times do 
			te = Payment.create(
				appointment_id: Appointment.pluck(:id).sample, 
				prix: Faker::Number.decimal(l_digits: 3, r_digits: 2),
				paiement_method: ["Credit_card", "Debit_card", "Cash"].sample
				)
		end

		100.times do 
			pe = Prescription.create(
				appointment_id: Appointment.pluck(:id).sample,
				date_prescription: Faker::Date.between(from: '2022-01-23', to: '2025-01-25'),
				notes: Faker::Lorem.sentence(word_count: 20)
				)
			#debugger
		end

		50.times do
			Room.create(
				numero_chambre: Faker::Number.binary(digits:3),
				etage: Faker::Number.binary(digits:2),
				nom: ["Salle d'accueil", "Salle d'accouchement", "Salle d'attente", "Salle de chirurgie"].sample
				)
			
		end

		5.times do 
			Speciality.create(
				nom_specialite: ["Ophtamologie", "Chirurgie", "Pediatrie", "Neurologie"].sample
				)
		end

		3.times do
			User.create(
				email: Faker::Internet.email,
				mot_de_passe: Faker::Internet.password(min_length: 8),
				role: ["Patient", "Docteur", "Nouvel utilisateur"].sample
				)
		end
	end
end

