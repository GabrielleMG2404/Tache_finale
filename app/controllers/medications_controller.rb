class MedicationsController < InheritedResources::Base

  private

    def medication_params
      params.require(:medication).permit(:nom, :dosage, :frequence, :prescription_id)
    end

end
