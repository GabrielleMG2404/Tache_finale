class AppointmentsController < InheritedResources::Base

  private

    def appointment_params
      params.require(:appointment).permit(:patient_id, :doctor_id, :date, :statut)
    end

end
