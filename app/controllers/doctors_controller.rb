class DoctorsController < InheritedResources::Base

  private

    def doctor_params
      params.require(:doctor).permit(:nom, :prenom, :telephone, :user_id, :speciality_id)
    end

end
