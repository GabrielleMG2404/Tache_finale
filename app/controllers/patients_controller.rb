class PatientsController < InheritedResources::Base

  private

    def patient_params
      params.require(:patient).permit(:nom, :prenom, :date_naissance, :telephone, :user_id)
    end

end
