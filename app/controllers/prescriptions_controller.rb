class PrescriptionsController < InheritedResources::Base

  private

    def prescription_params
      params.require(:prescription).permit(:appointment_id, :date_prescription, :notes)
    end

end
