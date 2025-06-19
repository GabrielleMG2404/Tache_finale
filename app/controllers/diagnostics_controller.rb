class DiagnosticsController < InheritedResources::Base

  private

    def diagnostic_params
      params.require(:diagnostic).permit(:appointment_id, :description, :date, :code_diagnostic)
    end

end
