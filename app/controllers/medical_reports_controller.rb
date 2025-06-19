class MedicalReportsController < InheritedResources::Base

  private

    def medical_report_params
      params.require(:medical_report).permit(:patient_id, :description, :date)
    end

end
