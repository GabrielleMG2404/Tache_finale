class SpecialitiesController < InheritedResources::Base

  private

    def speciality_params
      params.require(:speciality).permit(:nom_specialite)
    end

end
