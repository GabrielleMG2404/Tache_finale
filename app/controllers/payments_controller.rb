class PaymentsController < InheritedResources::Base

  private

    def payment_params
      params.require(:payment).permit(:appointment_id, :prix, :paiement_method)
    end

end
